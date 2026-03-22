package io.flutter.plugins.googlemobileads.usermessagingplatform;

import android.app.Activity;
import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.ump.ConsentForm;
import com.google.android.ump.ConsentInformation;
import com.google.android.ump.ConsentRequestParameters;
import com.google.android.ump.FormError;
import com.google.android.ump.UserMessagingPlatform;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.StandardMethodCodec;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class UserMessagingPlatformManager implements MethodChannel.MethodCallHandler {
    private static final String INTERNAL_ERROR_CODE = "0";
    private static final String METHOD_CHANNEL_NAME = "plugins.flutter.io/google_mobile_ads/ump";
    @Nullable
    private Activity activity;
    @Nullable
    private ConsentInformation consentInformation;
    private final Context context;
    private final MethodChannel methodChannel;
    private final UserMessagingCodec userMessagingCodec;

    /* compiled from: Proguard */
    /* renamed from: io.flutter.plugins.googlemobileads.usermessagingplatform.UserMessagingPlatformManager$6  reason: invalid class name */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class AnonymousClass6 {
        static final /* synthetic */ int[] $SwitchMap$com$google$android$ump$ConsentInformation$PrivacyOptionsRequirementStatus;

        static {
            int[] iArr = new int[ConsentInformation.PrivacyOptionsRequirementStatus.values().length];
            $SwitchMap$com$google$android$ump$ConsentInformation$PrivacyOptionsRequirementStatus = iArr;
            try {
                iArr[ConsentInformation.PrivacyOptionsRequirementStatus.NOT_REQUIRED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$android$ump$ConsentInformation$PrivacyOptionsRequirementStatus[ConsentInformation.PrivacyOptionsRequirementStatus.REQUIRED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public UserMessagingPlatformManager(BinaryMessenger binaryMessenger, Context context) {
        UserMessagingCodec userMessagingCodec = new UserMessagingCodec();
        this.userMessagingCodec = userMessagingCodec;
        MethodChannel methodChannel = new MethodChannel(binaryMessenger, METHOD_CHANNEL_NAME, new StandardMethodCodec(userMessagingCodec));
        this.methodChannel = methodChannel;
        methodChannel.setMethodCallHandler(this);
        this.context = context;
    }

    private ConsentInformation getConsentInformation() {
        ConsentInformation consentInformation = this.consentInformation;
        if (consentInformation != null) {
            return consentInformation;
        }
        ConsentInformation consentInformation2 = UserMessagingPlatform.getConsentInformation(this.context);
        this.consentInformation = consentInformation2;
        return consentInformation2;
    }

    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(@NonNull MethodCall methodCall, @NonNull final MethodChannel.Result result) {
        ConsentRequestParameters asConsentRequestParameters;
        String str = methodCall.method;
        str.getClass();
        char c = 65535;
        switch (str.hashCode()) {
            case -2068759970:
                if (str.equals("ConsentInformation#reset")) {
                    c = 0;
                    break;
                }
                break;
            case -1987766237:
                if (str.equals("UserMessagingPlatform#loadAndShowConsentFormIfRequired")) {
                    c = 1;
                    break;
                }
                break;
            case -1310145901:
                if (str.equals("ConsentInformation#requestConsentInfoUpdate")) {
                    c = 2;
                    break;
                }
                break;
            case -971145086:
                if (str.equals("ConsentForm#show")) {
                    c = 3;
                    break;
                }
                break;
            case -878979462:
                if (str.equals("ConsentForm#dispose")) {
                    c = 4;
                    break;
                }
                break;
            case -689237714:
                if (str.equals("UserMessagingPlatform#showPrivacyOptionsForm")) {
                    c = 5;
                    break;
                }
                break;
            case -585732218:
                if (str.equals("ConsentInformation#isConsentFormAvailable")) {
                    c = 6;
                    break;
                }
                break;
            case -497439839:
                if (str.equals("UserMessagingPlatform#loadConsentForm")) {
                    c = 7;
                    break;
                }
                break;
            case -309829158:
                if (str.equals("ConsentInformation#getPrivacyOptionsRequirementStatus")) {
                    c = '\b';
                    break;
                }
                break;
            case 504907168:
                if (str.equals("ConsentInformation#canRequestAds")) {
                    c = '\t';
                    break;
                }
                break;
            case 665104519:
                if (str.equals("ConsentInformation#getConsentStatus")) {
                    c = '\n';
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                getConsentInformation().reset();
                result.success(null);
                return;
            case 1:
                Activity activity = this.activity;
                if (activity == null) {
                    result.error("0", "UserMessagingPlatform#loadAndShowConsentFormIfRequired called before plugin has been registered to an activity.", null);
                    return;
                } else {
                    UserMessagingPlatform.loadAndShowConsentFormIfRequired(activity, new ConsentForm.OnConsentFormDismissedListener() { // from class: io.flutter.plugins.googlemobileads.usermessagingplatform.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                        @Override // com.google.android.ump.ConsentForm.OnConsentFormDismissedListener
                        public final void onConsentFormDismissed(FormError formError) {
                            MethodChannel.Result.this.success(formError);
                        }
                    });
                    return;
                }
            case 2:
                if (this.activity == null) {
                    result.error("0", "ConsentInformation#requestConsentInfoUpdate called before plugin has been registered to an activity.", null);
                    return;
                }
                ConsentRequestParametersWrapper consentRequestParametersWrapper = (ConsentRequestParametersWrapper) methodCall.argument("params");
                if (consentRequestParametersWrapper == null) {
                    asConsentRequestParameters = new ConsentRequestParameters.Builder().build();
                } else {
                    asConsentRequestParameters = consentRequestParametersWrapper.getAsConsentRequestParameters(this.activity);
                }
                getConsentInformation().requestConsentInfoUpdate(this.activity, asConsentRequestParameters, new ConsentInformation.OnConsentInfoUpdateSuccessListener() { // from class: io.flutter.plugins.googlemobileads.usermessagingplatform.UserMessagingPlatformManager.1
                    @Override // com.google.android.ump.ConsentInformation.OnConsentInfoUpdateSuccessListener
                    public void onConsentInfoUpdateSuccess() {
                        result.success(null);
                    }
                }, new ConsentInformation.OnConsentInfoUpdateFailureListener() { // from class: io.flutter.plugins.googlemobileads.usermessagingplatform.UserMessagingPlatformManager.2
                    @Override // com.google.android.ump.ConsentInformation.OnConsentInfoUpdateFailureListener
                    public void onConsentInfoUpdateFailure(FormError formError) {
                        result.error(Integer.toString(formError.getErrorCode()), formError.getMessage(), null);
                    }
                });
                return;
            case 3:
                ConsentForm consentForm = (ConsentForm) methodCall.argument("consentForm");
                if (consentForm == null) {
                    result.error("0", "ConsentForm#show", null);
                    return;
                } else {
                    consentForm.show(this.activity, new ConsentForm.OnConsentFormDismissedListener() { // from class: io.flutter.plugins.googlemobileads.usermessagingplatform.UserMessagingPlatformManager.5
                        @Override // com.google.android.ump.ConsentForm.OnConsentFormDismissedListener
                        public void onConsentFormDismissed(@Nullable FormError formError) {
                            if (formError != null) {
                                result.error(Integer.toString(formError.getErrorCode()), formError.getMessage(), null);
                            } else {
                                result.success(null);
                            }
                        }
                    });
                    return;
                }
            case 4:
                ConsentForm consentForm2 = (ConsentForm) methodCall.argument("consentForm");
                if (consentForm2 != null) {
                    this.userMessagingCodec.disposeConsentForm(consentForm2);
                }
                result.success(null);
                return;
            case 5:
                Activity activity2 = this.activity;
                if (activity2 == null) {
                    result.error("0", "UserMessagingPlatform#showPrivacyOptionsForm called before plugin has been registered to an activity.", null);
                    return;
                } else {
                    UserMessagingPlatform.showPrivacyOptionsForm(activity2, new ConsentForm.OnConsentFormDismissedListener() { // from class: io.flutter.plugins.googlemobileads.usermessagingplatform.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                        @Override // com.google.android.ump.ConsentForm.OnConsentFormDismissedListener
                        public final void onConsentFormDismissed(FormError formError) {
                            MethodChannel.Result.this.success(formError);
                        }
                    });
                    return;
                }
            case 6:
                result.success(Boolean.valueOf(getConsentInformation().isConsentFormAvailable()));
                return;
            case 7:
                UserMessagingPlatform.loadConsentForm(this.context, new UserMessagingPlatform.OnConsentFormLoadSuccessListener() { // from class: io.flutter.plugins.googlemobileads.usermessagingplatform.UserMessagingPlatformManager.3
                    @Override // com.google.android.ump.UserMessagingPlatform.OnConsentFormLoadSuccessListener
                    public void onConsentFormLoadSuccess(ConsentForm consentForm3) {
                        UserMessagingPlatformManager.this.userMessagingCodec.trackConsentForm(consentForm3);
                        result.success(consentForm3);
                    }
                }, new UserMessagingPlatform.OnConsentFormLoadFailureListener() { // from class: io.flutter.plugins.googlemobileads.usermessagingplatform.UserMessagingPlatformManager.4
                    @Override // com.google.android.ump.UserMessagingPlatform.OnConsentFormLoadFailureListener
                    public void onConsentFormLoadFailure(FormError formError) {
                        result.error(Integer.toString(formError.getErrorCode()), formError.getMessage(), null);
                    }
                });
                return;
            case '\b':
                int i = AnonymousClass6.$SwitchMap$com$google$android$ump$ConsentInformation$PrivacyOptionsRequirementStatus[getConsentInformation().getPrivacyOptionsRequirementStatus().ordinal()];
                if (i != 1) {
                    if (i != 2) {
                        result.success(2);
                        return;
                    } else {
                        result.success(1);
                        return;
                    }
                }
                result.success(0);
                return;
            case '\t':
                result.success(Boolean.valueOf(getConsentInformation().canRequestAds()));
                return;
            case '\n':
                result.success(Integer.valueOf(getConsentInformation().getConsentStatus()));
                return;
            default:
                result.notImplemented();
                return;
        }
    }

    public void setActivity(@Nullable Activity activity) {
        this.activity = activity;
    }

    @VisibleForTesting
    public UserMessagingPlatformManager(BinaryMessenger binaryMessenger, Context context, UserMessagingCodec userMessagingCodec) {
        this.userMessagingCodec = userMessagingCodec;
        MethodChannel methodChannel = new MethodChannel(binaryMessenger, METHOD_CHANNEL_NAME, new StandardMethodCodec(userMessagingCodec));
        this.methodChannel = methodChannel;
        methodChannel.setMethodCallHandler(this);
        this.context = context;
    }
}
