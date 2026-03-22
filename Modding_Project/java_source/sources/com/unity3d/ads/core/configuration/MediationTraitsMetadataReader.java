package com.unity3d.ads.core.configuration;

import com.unity3d.services.core.misc.JsonStorage;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.json.JSONObject;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u000b2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u000bB\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u0015\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\n¨\u0006\f"}, d2 = {"Lcom/unity3d/ads/core/configuration/MediationTraitsMetadataReader;", "Lcom/unity3d/ads/core/configuration/MetadataReader;", "Lorg/json/JSONObject;", "jsonStorage", "Lcom/unity3d/services/core/misc/JsonStorage;", "(Lcom/unity3d/services/core/misc/JsonStorage;)V", "getBooleanTrait", "", "key", "", "(Ljava/lang/String;)Ljava/lang/Boolean;", "Companion", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nMediationTraitsMetadataReader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediationTraitsMetadataReader.kt\ncom/unity3d/ads/core/configuration/MediationTraitsMetadataReader\n+ 2 MetadataReader.kt\ncom/unity3d/ads/core/configuration/MetadataReader\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,19:1\n7#2,7:20\n1#3:27\n*S KotlinDebug\n*F\n+ 1 MediationTraitsMetadataReader.kt\ncom/unity3d/ads/core/configuration/MediationTraitsMetadataReader\n*L\n11#1:20,7\n*E\n"})
/* loaded from: classes6.dex */
public final class MediationTraitsMetadataReader extends MetadataReader<JSONObject> {
    @NotNull
    public static final String BOLD_SDK_ENABLED = "boldSdkEnabled";
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final String MEDIATION_TRAITS = "mediation.traits.value";
    @NotNull
    public static final String USE_REFACTORED_HTTP_CLIENT = "useRefactoredHttpClient";

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/unity3d/ads/core/configuration/MediationTraitsMetadataReader$Companion;", "", "()V", "BOLD_SDK_ENABLED", "", "MEDIATION_TRAITS", "USE_REFACTORED_HTTP_CLIENT", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public MediationTraitsMetadataReader(@NotNull JsonStorage jsonStorage) {
        super(jsonStorage, MEDIATION_TRAITS);
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0015, code lost:
        if (r0 == null) goto L17;
     */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Boolean getBooleanTrait(@org.jetbrains.annotations.NotNull java.lang.String r4) {
        /*
            r3 = this;
            com.unity3d.services.core.misc.JsonStorage r0 = r3.getJsonStorage()
            java.lang.String r1 = r3.getKey()
            java.lang.Object r0 = r0.get(r1)
            r1 = 0
            if (r0 == 0) goto L17
            boolean r2 = r0 instanceof org.json.JSONObject
            if (r2 == 0) goto L14
            goto L15
        L14:
            r0 = r1
        L15:
            if (r0 != 0) goto L18
        L17:
            r0 = r1
        L18:
            org.json.JSONObject r0 = (org.json.JSONObject) r0
            if (r0 == 0) goto L2f
            boolean r2 = r0.has(r4)
            if (r2 == 0) goto L23
            goto L24
        L23:
            r0 = r1
        L24:
            if (r0 == 0) goto L2f
            boolean r4 = r0.optBoolean(r4)
            java.lang.Boolean r4 = java.lang.Boolean.valueOf(r4)
            return r4
        L2f:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.configuration.MediationTraitsMetadataReader.getBooleanTrait(java.lang.String):java.lang.Boolean");
    }
}
