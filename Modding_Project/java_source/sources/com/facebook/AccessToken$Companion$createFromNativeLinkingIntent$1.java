package com.facebook;

import android.os.Bundle;
import com.facebook.AccessToken;
import com.facebook.internal.Utility;
import java.util.Date;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\n\u0018\u00002\u00020\u0001J\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u0019\u0010\t\u001a\u00020\u00042\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"com/facebook/AccessToken$Companion$createFromNativeLinkingIntent$1", "Lcom/facebook/internal/Utility$GraphMeRequestWithCacheCallback;", "Lorg/json/JSONObject;", "userInfo", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lorg/json/JSONObject;)V", "Lcom/facebook/FacebookException;", "error", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/FacebookException;)V", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class AccessToken$Companion$createFromNativeLinkingIntent$1 implements Utility.GraphMeRequestWithCacheCallback {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final /* synthetic */ String f5881Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final /* synthetic */ AccessToken.AccessTokenCreationCallback f5882Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final /* synthetic */ Bundle f5883Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    @Override // com.facebook.internal.Utility.GraphMeRequestWithCacheCallback
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable FacebookException facebookException) {
        this.f5882Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(facebookException);
    }

    @Override // com.facebook.internal.Utility.GraphMeRequestWithCacheCallback
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable JSONObject jSONObject) {
        String string;
        AccessToken Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        if (jSONObject == null) {
            string = null;
        } else {
            try {
                string = jSONObject.getString("id");
            } catch (Exception unused) {
                this.f5882Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new FacebookException("Unable to generate access token due to missing user id"));
                return;
            }
        }
        if (string != null) {
            this.f5883Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.putString("user_id", string);
            AccessToken.AccessTokenCreationCallback accessTokenCreationCallback = this.f5882Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = AccessToken.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(null, this.f5883Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, AccessTokenSource.FACEBOOK_APPLICATION_WEB, new Date(), this.f5881Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            accessTokenCreationCallback.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            return;
        }
        throw new IllegalStateException("Required value was null.");
    }
}
