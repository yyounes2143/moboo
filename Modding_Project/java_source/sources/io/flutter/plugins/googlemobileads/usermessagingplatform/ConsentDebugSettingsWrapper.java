package io.flutter.plugins.googlemobileads.usermessagingplatform;

import android.content.Context;
import androidx.annotation.Nullable;
import com.google.android.ump.ConsentDebugSettings;
import j$.util.Objects;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
class ConsentDebugSettingsWrapper {
    @Nullable
    private final Integer debugGeography;
    @Nullable
    private final List<String> testIdentifiers;

    public ConsentDebugSettingsWrapper(@Nullable Integer num, @Nullable List<String> list) {
        this.debugGeography = num;
        this.testIdentifiers = list;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ConsentDebugSettingsWrapper)) {
            return false;
        }
        ConsentDebugSettingsWrapper consentDebugSettingsWrapper = (ConsentDebugSettingsWrapper) obj;
        if (Objects.equals(this.debugGeography, consentDebugSettingsWrapper.getDebugGeography()) && Objects.equals(this.testIdentifiers, consentDebugSettingsWrapper.getTestIdentifiers())) {
            return true;
        }
        return false;
    }

    public ConsentDebugSettings getAsConsentDebugSettings(Context context) {
        ConsentDebugSettings.Builder builder = new ConsentDebugSettings.Builder(context);
        Integer num = this.debugGeography;
        if (num != null) {
            builder.setDebugGeography(num.intValue());
        }
        List<String> list = this.testIdentifiers;
        if (list != null) {
            for (String str : list) {
                builder.addTestDeviceHashedId(str);
            }
        }
        return builder.build();
    }

    @Nullable
    public Integer getDebugGeography() {
        return this.debugGeography;
    }

    @Nullable
    public List<String> getTestIdentifiers() {
        return this.testIdentifiers;
    }

    public int hashCode() {
        return Objects.hash(this.debugGeography, this.testIdentifiers);
    }
}
