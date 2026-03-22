package io.flutter.plugins.googlemobileads.usermessagingplatform;

import android.content.Context;
import androidx.annotation.Nullable;
import com.google.android.ump.ConsentRequestParameters;
import j$.util.Objects;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
class ConsentRequestParametersWrapper {
    @Nullable
    private final ConsentDebugSettingsWrapper debugSettings;
    @Nullable
    private final Boolean tfuac;

    public ConsentRequestParametersWrapper(@Nullable Boolean bool, @Nullable ConsentDebugSettingsWrapper consentDebugSettingsWrapper) {
        this.tfuac = bool;
        this.debugSettings = consentDebugSettingsWrapper;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ConsentRequestParametersWrapper)) {
            return false;
        }
        ConsentRequestParametersWrapper consentRequestParametersWrapper = (ConsentRequestParametersWrapper) obj;
        if (Objects.equals(this.tfuac, consentRequestParametersWrapper.getTfuac()) && Objects.equals(this.debugSettings, consentRequestParametersWrapper.getDebugSettings())) {
            return true;
        }
        return false;
    }

    public ConsentRequestParameters getAsConsentRequestParameters(Context context) {
        ConsentRequestParameters.Builder builder = new ConsentRequestParameters.Builder();
        Boolean bool = this.tfuac;
        if (bool != null) {
            builder.setTagForUnderAgeOfConsent(bool.booleanValue());
        }
        ConsentDebugSettingsWrapper consentDebugSettingsWrapper = this.debugSettings;
        if (consentDebugSettingsWrapper != null) {
            builder.setConsentDebugSettings(consentDebugSettingsWrapper.getAsConsentDebugSettings(context));
        }
        return builder.build();
    }

    @Nullable
    public ConsentDebugSettingsWrapper getDebugSettings() {
        return this.debugSettings;
    }

    @Nullable
    public Boolean getTfuac() {
        return this.tfuac;
    }

    public int hashCode() {
        return Objects.hash(this.tfuac, this.debugSettings);
    }
}
