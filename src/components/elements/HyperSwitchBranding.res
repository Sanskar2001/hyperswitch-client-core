open ReactNative
open Style
@react.component
let make = () => {
  let (nativeProp, _) = React.useContext(NativePropContext.nativePropContext)
  <UIUtils.RenderIf condition={!nativeProp.hyperParams.disableBranding}>
    <Space />
    <View style={viewStyle(~alignItems=#center, ())}>
      <View
        style={viewStyle(
          ~flexDirection=#row,
          ~display={#flex},
          ~alignItems=#center,
          ~justifyContent=#center,
          (),
        )}>
        <Text style={textStyle(~fontSize=11., ~color="#b0a8a7", ())}>
          {"powered by "->React.string}
        </Text>
        <Text style={textStyle(~fontSize=13., ~fontWeight=FontWeight._700, ~color="#b0a8a7", ())}>
          {"Hyperswitch"->React.string}
        </Text>
      </View>
      // <Icon
      //   name={switch themeType {
      //   | Light(_) => "hyperswitch"
      //   | Dark(_) => "hyperswitchdark"
      //   }}
      //   width=180.
      //   height=20.
      // />
      <Space height=10. />
    </View>
  </UIUtils.RenderIf>
}
