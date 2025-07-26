# What is HTL?

-   HTL (formerly known as Sightly) is the templating language used in Adobe Experience Manager (AEM). It lets front-end developers work with dynamic content securely and efficiently, without needing deep Java knowledge.

| What You Know           | How HTL Builds On It                                                                                               |
| ----------------------- | ------------------------------------------------------------------------------------------------------------------ |
| **HTML**                | HTL is embedded _within_ HTML. You continue writing normal HTML with small additions like `data-sly-*` attributes. |
| **CSS**                 | HTL doesn’t interfere with your CSS. Stylesheets are linked and used the same way.                                 |
| **Templating Concepts** | If you’ve seen any templating (like Handlebars, JSX, or PHP), HTL will feel familiar.                              |

-   Example Comparison

```
    - HTML:  <h1>Welcome, User!</h1>
    - HTL: <h1>Welcome, ${user.name}!</h1>
    - With logic:
        <div data-sly-test="${user.loggedIn}">
            <p>Hello, ${user.name}!</p>
        </div>

```

## Key HTL Concepts to Learn (Very Basic):

```
    - ${variable} – Output variables
    - data-sly-test – Simple conditional rendering
    - data-sly-repeat – Looping through lists
    - data-sly-use – Linking to backend models/ Use backend Java model or JS script
    - data-sly-unwrap – Remove wrapping tag
    - data-sly-resource – Include a child component
    - data-sly-include – Include a static HTL file
    - data-sly-call and data-sly-template – Reusable templates
    - data-sly-element – Dynamic HTML tag
    - data-sly-list – More control over iteration

HTML remains intact – You’re just adding smart annotations
```
