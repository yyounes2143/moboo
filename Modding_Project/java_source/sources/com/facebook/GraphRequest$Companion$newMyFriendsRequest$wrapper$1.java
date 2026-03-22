package com.facebook;

import com.facebook.GraphRequest;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\b\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"com/facebook/GraphRequest$Companion$newMyFriendsRequest$wrapper$1", "Lcom/facebook/GraphRequest$Callback;", "Lcom/facebook/GraphResponse;", "response", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/GraphResponse;)V", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class GraphRequest$Companion$newMyFriendsRequest$wrapper$1 implements GraphRequest.Callback {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final /* synthetic */ GraphRequest.GraphJSONArrayCallback f6034Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    @Override // com.facebook.GraphRequest.Callback
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull GraphResponse graphResponse) {
        JSONArray optJSONArray;
        if (this.f6034Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww != null) {
            JSONObject Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = graphResponse.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                optJSONArray = null;
            } else {
                optJSONArray = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.optJSONArray("data");
            }
            this.f6034Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(optJSONArray, graphResponse);
        }
    }
}
