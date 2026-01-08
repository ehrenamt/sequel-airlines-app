Custom components are included in this directory.
They are broadly classified and organized according to these rules.

Atomics     -   Components which are functionally and visually simple 
                and do not contain any other components.

Composites  -   Components which contain other components,
                but are themselves included within other components
                and do not complete an entire page. These are further
                subdivided into 

Global      -   Components which are shared across multiple layouts.
                These are generally static and can likely be rendered
                via SSR.

Layouts     -   Components that include other components, but are only
                included in the <App /> component and correspond to 
                complete pages or views.

In the case that one component may belong to more than one classification,
it is to be classified as the role it most closely fulfills.
