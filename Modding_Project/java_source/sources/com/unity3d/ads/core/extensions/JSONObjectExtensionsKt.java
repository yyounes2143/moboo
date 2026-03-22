package com.unity3d.ads.core.extensions;

import com.google.android.gms.ads.AdError;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import org.jetbrains.annotations.NotNull;
import org.json.JSONObject;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0018\u0010\u0000\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0001*\u00020\u0004¨\u0006\u0005"}, d2 = {"toBuiltInMap", "", "", "", "Lorg/json/JSONObject;", "unity-ads_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nJSONObjectExtensions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JSONObjectExtensions.kt\ncom/unity3d/ads/core/extensions/JSONObjectExtensionsKt\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,13:1\n759#2,2:14\n775#2,2:16\n778#2:19\n1#3:18\n*S KotlinDebug\n*F\n+ 1 JSONObjectExtensions.kt\ncom/unity3d/ads/core/extensions/JSONObjectExtensionsKt\n*L\n11#1:14,2\n11#1:16,2\n11#1:19\n*E\n"})
/* loaded from: classes6.dex */
public final class JSONObjectExtensionsKt {
    @NotNull
    public static final Map<String, Object> toBuiltInMap(@NotNull JSONObject jSONObject) {
        Sequence asSequence = SequencesKt.asSequence(jSONObject.keys());
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj : asSequence) {
            Object opt = jSONObject.opt((String) obj);
            if (opt == null || Intrinsics.areEqual(String.valueOf(opt), AdError.UNDEFINED_DOMAIN) || Intrinsics.areEqual(String.valueOf(opt), AbstractJsonLexerKt.NULL)) {
                opt = null;
            }
            linkedHashMap.put(obj, opt);
        }
        return linkedHashMap;
    }
}
