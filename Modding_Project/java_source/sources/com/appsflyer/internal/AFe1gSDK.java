package com.appsflyer.internal;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.media3.common.C;
import com.appsflyer.attribution.AppsFlyerRequestListener;
import com.appsflyer.internal.components.network.http.ResponseNetwork;
import com.appsflyer.internal.components.network.http.exceptions.ParsingException;
import com.appsflyer.share.LinkGenerator;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class AFe1gSDK extends AFe1fSDK<String> {
    private final String component2;
    @Nullable
    private final String copy;
    @NonNull
    private final UUID copydefault;
    private final Map<String, String> equals;
    @Nullable
    private final LinkGenerator.ResponseListener hashCode;
    @NonNull
    private final LinkGenerator toString;

    public AFe1gSDK(@NonNull AFd1zSDK aFd1zSDK, @NonNull UUID uuid, @NonNull String str, @NonNull Map<String, String> map, @Nullable String str2, @Nullable LinkGenerator.ResponseListener responseListener, @NonNull LinkGenerator linkGenerator) {
        super(AFe1pSDK.ONELINK, new AFe1pSDK[]{AFe1pSDK.RC_CDN}, aFd1zSDK, uuid.toString());
        this.copydefault = uuid;
        this.component2 = str;
        this.equals = new HashMap(map);
        this.hashCode = responseListener;
        this.copy = str2;
        this.toString = linkGenerator;
    }

    @Override // com.appsflyer.internal.AFe1fSDK, com.appsflyer.internal.AFe1mSDK
    public final long AFAdRevenueData() {
        return C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS;
    }

    @Override // com.appsflyer.internal.AFe1fSDK
    public final boolean a_() {
        return false;
    }

    @Override // com.appsflyer.internal.AFe1fSDK
    @Nullable
    public final AppsFlyerRequestListener component2() {
        return null;
    }

    @Override // com.appsflyer.internal.AFe1fSDK
    public final boolean copydefault() {
        return false;
    }

    @Override // com.appsflyer.internal.AFe1fSDK, com.appsflyer.internal.AFe1mSDK
    public final void getCurrencyIso4217Code() {
        ResponseNetwork responseNetwork;
        super.getCurrencyIso4217Code();
        LinkGenerator.ResponseListener responseListener = this.hashCode;
        if (responseListener != null) {
            if (this.getMonetizationNetwork == AFe1uSDK.SUCCESS && (responseNetwork = ((AFe1fSDK) this).areAllFieldsValid) != null) {
                responseListener.onResponse((String) responseNetwork.getBody());
                return;
            }
            Throwable component1 = component1();
            if (component1 instanceof ParsingException) {
                if (((ParsingException) component1).getRawResponse().isSuccessful()) {
                    responseListener.onResponseError("Can't parse one link data");
                    return;
                } else {
                    responseListener.onResponse(this.toString.generateLink());
                    return;
                }
            }
            responseListener.onResponse(this.toString.generateLink());
        }
    }

    @Override // com.appsflyer.internal.AFe1fSDK
    public final AFd1hSDK<String> AFAdRevenueData(@NonNull String str) {
        return ((AFe1fSDK) this).component4.getMonetizationNetwork(this.component2, this.equals, this.copy, this.copydefault, str);
    }
}
