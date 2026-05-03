///|
async fn main {
  let mut counter = 0
  @lepus.Window::new(title="MoonCraft", source~, debug=1, plugins=[
    @webview.Plugin::new("counter", plugin => {
      plugin.command("increment", (delta : Int) => {
        counter += delta
        counter
      })
    }),
  ]).run()
}

///|
let source : @lepus.Source = @lepus.Source::zip(resource) catch {
  _ => @lepus.Source::html("Loading resource failed.")
}
