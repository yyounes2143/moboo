package com.facebook.share.internal;

import com.facebook.share.model.CameraEffectArguments;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u000fB\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0007¢\u0006\u0004\b\u0007\u0010\bR8\u0010\u000e\u001a&\u0012\b\u0012\u0006\u0012\u0002\b\u00030\n\u0012\u0004\u0012\u00020\u000b0\tj\u0012\u0012\b\u0012\u0006\u0012\u0002\b\u00030\n\u0012\u0004\u0012\u00020\u000b`\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\r¨\u0006\u0010"}, d2 = {"Lcom/facebook/share/internal/CameraEffectJSONUtility;", "", "<init>", "()V", "Lcom/facebook/share/model/CameraEffectArguments;", "arguments", "Lorg/json/JSONObject;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/share/model/CameraEffectArguments;)Lorg/json/JSONObject;", "Ljava/util/HashMap;", "Ljava/lang/Class;", "Lcom/facebook/share/internal/CameraEffectJSONUtility$Setter;", "Lkotlin/collections/HashMap;", "Ljava/util/HashMap;", "SETTERS", "Setter", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class CameraEffectJSONUtility {
    @NotNull
    public static final CameraEffectJSONUtility INSTANCE = new CameraEffectJSONUtility();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final HashMap<Class<?>, Setter> f7157Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = MapsKt.hashMapOf(TuplesKt.to(String.class, new Setter() { // from class: com.facebook.share.internal.CameraEffectJSONUtility$SETTERS$1
        @Override // com.facebook.share.internal.CameraEffectJSONUtility.Setter
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull JSONObject jSONObject, @NotNull String str, @Nullable Object obj) throws JSONException {
            jSONObject.put(str, obj);
        }
    }), TuplesKt.to(String[].class, new Setter() { // from class: com.facebook.share.internal.CameraEffectJSONUtility$SETTERS$2
        @Override // com.facebook.share.internal.CameraEffectJSONUtility.Setter
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull JSONObject jSONObject, @NotNull String str, @Nullable Object obj) throws JSONException {
            JSONArray jSONArray = new JSONArray();
            if (obj != null) {
                String[] strArr = (String[]) obj;
                int length = strArr.length;
                int i = 0;
                while (i < length) {
                    String str2 = strArr[i];
                    i++;
                    jSONArray.put(str2);
                }
                jSONObject.put(str, jSONArray);
                return;
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<kotlin.String?>");
        }
    }), TuplesKt.to(JSONArray.class, new Setter() { // from class: com.facebook.share.internal.CameraEffectJSONUtility$SETTERS$3
        @Override // com.facebook.share.internal.CameraEffectJSONUtility.Setter
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull JSONObject jSONObject, @NotNull String str, @Nullable Object obj) throws JSONException {
            throw new IllegalArgumentException("JSONArray's are not supported in bundles.");
        }
    }));

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\bb\u0018\u00002\u00020\u0001J)\u0010\b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0006\u001a\u0004\u0018\u00010\u0001H&¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/facebook/share/internal/CameraEffectJSONUtility$Setter;", "", "Lorg/json/JSONObject;", "json", "", "key", "value", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public interface Setter {
        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull JSONObject jSONObject, @NotNull String str, @Nullable Object obj) throws JSONException;
    }

    @JvmStatic
    @Nullable
    public static final JSONObject Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable CameraEffectArguments cameraEffectArguments) throws JSONException {
        if (cameraEffectArguments == null) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        for (String str : cameraEffectArguments.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            Object Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = cameraEffectArguments.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                Setter setter = f7157Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.getClass());
                if (setter != null) {
                    setter.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject, str, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                } else {
                    throw new IllegalArgumentException(Intrinsics.stringPlus("Unsupported type: ", Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.getClass()));
                }
            }
        }
        return jSONObject;
    }
}
