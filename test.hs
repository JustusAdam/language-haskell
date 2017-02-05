

someFunc = 
    another argument
  where ident = 4


anotherFunc arg = 
    let something = "hello" :: String in expression

  where 
    expression argument = arg + 7

-- | Get the username of a registered user. The type signature is so large to allow this function to be used both in 'BotReacting' and 'ScriptDefinition'.
getUsername :: (HasConfigAccess m, AccessAdapter m, IsAdapter a, MonadIO m, AdapterT m ~ a)
            => User a -> m L.Text
getUsername = A.liftAdapterAction . A.getUsername


class Manager manager where
    -- | Type of the session state inside the manager. In most cases this will
    -- either be any type or a type constrained by some serialisation typeclass like
    --
    -- @
    --  instance Serialize a => Manager (WritesToFileManager a) where
    --      type Manages (WritesToFileManager a) = a
    -- @
    type Manages manager
    -- | Obtain the full session state for the current client.
    managerGetSession :: Handler v manager (Manages manager)
    managerGetSession = managerModifySession id
    -- | Replace the state of the current sessio with the provided one
    managerSetSession :: Manages manager -> Handler v manager ()
    managerSetSession = managerModifySession . const >=> const (return ())

    -- | Indicate to the manager that cached mutations on state should be persisted.
    --
    -- This method is entirely optional, however it is recommended
    -- for managers where mutating the persistent state is expensive to
    -- cache mutations in the manager data structure and persist them once commit
    -- is called.
    managerCommit :: Handler v manager ()
    managerCommit = return ()

    -- | Again optional. Users can use this method to indicate to the manager that
    -- the session should be established (cookie read for instance) and the state
    -- cached into the manager data structure.
    managerLoad :: Handler v manager ()
    managerLoad = return ()

    -- | Applies a function to the (cached) session state
    managerModifySession :: (Manages manager -> Manages manager) -> Handler v manager (Manages manager)
    managerModifySession f = managerGetSession >>= \sess -> managerSetSession (f sess) >> return sess

    {-# MINIMAL managerGetSession, managerSetSession | managerModifySession #-}
