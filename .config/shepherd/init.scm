;; init.scm -- default shepherd configuration file.

;; Services known to shepherd:
;; Add new services (defined using 'make <service>') to shepherd here by
;; providing them as arguments to 'register-services'.
(register-services
  (make <service>
    #:provides '(syncthing)
    #:start (make-forkexec-constructor
             '("syncthing" "-no-browser"))
    #:stop (make-kill-destructor)
    #:actions (make-actions
               (open (lambda (_) (system* "syncthing" "-browser-only"))))))

;; Send shepherd into the background
(action 'shepherd 'daemonize)

;; Services to start when shepherd starts:
;; Add the name of each service that should be started to the list
;; below passed to 'for-each'.
(for-each start '(syncthing))
