package io.flutter.plugins.googlemobileads;

import androidx.annotation.Nullable;
import com.google.android.gms.ads.rewarded.ServerSideVerificationOptions;
import j$.util.Objects;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
class FlutterServerSideVerificationOptions {
    @Nullable
    private final String customData;
    @Nullable
    private final String userId;

    public FlutterServerSideVerificationOptions(@Nullable String str, @Nullable String str2) {
        this.userId = str;
        this.customData = str2;
    }

    public ServerSideVerificationOptions asServerSideVerificationOptions() {
        ServerSideVerificationOptions.Builder builder = new ServerSideVerificationOptions.Builder();
        String str = this.userId;
        if (str != null) {
            builder.setUserId(str);
        }
        String str2 = this.customData;
        if (str2 != null) {
            builder.setCustomData(str2);
        }
        return builder.build();
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FlutterServerSideVerificationOptions)) {
            return false;
        }
        FlutterServerSideVerificationOptions flutterServerSideVerificationOptions = (FlutterServerSideVerificationOptions) obj;
        if (Objects.equals(flutterServerSideVerificationOptions.userId, this.userId) && Objects.equals(flutterServerSideVerificationOptions.customData, this.customData)) {
            return true;
        }
        return false;
    }

    @Nullable
    public String getCustomData() {
        return this.customData;
    }

    @Nullable
    public String getUserId() {
        return this.userId;
    }

    public int hashCode() {
        return Objects.hash(this.userId, this.customData);
    }
}
