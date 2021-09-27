# react-native-paypal-bridge-sdk

A React Native library for the paypal sdk for both android and ios.

## Getting started

`$ npm install react-native-paypal-bridge-sdk --save`

### Mostly automatic installation

`$ react-native link react-native-paypal-bridge-sdk`

### Manual installation

#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-paypal-bridge-sdk` and add `RNPaypalSdk.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNPaypalSdk.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`

- Add `import com.reactnative.paypalsdk.RNPaypalSdkPackage;` to the imports at the top of the file
- Add `new RNPaypalSdkPackage()` to the list returned by the `getPackages()` method

2. Append the following lines to `android/settings.gradle`:

   ```
   include ':react-native-paypal-bridge-sdk'
   project(':react-native-paypal-bridge-sdk').projectDir = new File(rootProject.projectDir,  '../node_modules/react-native-paypal-bridge-sdk/android')
   ```

3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:

   ```
      compile project(':react-native-paypal-bridge-sdk')
   ```

## Properties

| Prop                    | Description                                                                         | Type                   |
| ----------------------- | ----------------------------------------------------------------------------------- | ---------------------- |
| **`clientId`**          | Your client id for each relevant environment, as obtained from developer.paypal.com | _String_               |
| **`environment`**       | Your paypal environment.                                                            | _RNPaypal.ENVIRONMENT_ |
| **`intent`**            | Name of the animation, see below for available animations.                          | _RNPaypal.INTENT_      |
| **`price`**             | Amount in the given currency to process. Must be positive.                          | _Integer_              |
| **`currency`**          | ISO standard currency code (<http://en.wikipedia.org/wiki/ISO_4217>).               | _String_               |
| **`description`**       | A short description of the transaction, for display to the user.                    | _String_               |
| **`acceptCreditCards`** | If set to NO, the SDK will only support paying with PayPal, not with credit cards.  | _Bool_                 |

## Environments

The Environment. The allowed values are:

- **`NO_NETWORK`**. No need for real credentials at Login prompt.
- **`SANDBOX`**. You'll need sandbox credentials in order to work at (<https://developer.paypal.com/developer/accounts>).
- **`PRODUCTION`**. In order to work you need to have an production client id.

## Intents

The intent. The allowed values are:

- **`SALE`**. For immediate payment.
- **`AUTHORIZE`**. For a delayed payment.
- **`ORDER`**. An Order.

## Usage

```javascript
import RNPaypalSdk from "react-native-paypal-bridge-sdk";

RNPaypalSdk.paymentRequest({
  clientId: "<YOUR CLIENT ID>",
  environment: RNPaypalSdk.ENVIRONMENT.NO_NETWORK,
  intent: RNPaypalSdk.INTENT.SALE,
  price: 60,
  currency: "USD",
  description: `Android testing`,
  acceptCreditCards: true,
})
  .then((response) => {
    console.log(response);
  })
  .catch((err) => {
    console.log(err.message);
  });
```
