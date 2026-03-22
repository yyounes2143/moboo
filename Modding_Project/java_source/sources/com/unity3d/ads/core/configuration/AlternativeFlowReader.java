package com.unity3d.ads.core.configuration;

import com.unity3d.ads.core.data.repository.SessionRepository;
import com.unity3d.services.core.configuration.ConfigurationReader;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\t\u0010\r\u001a\u00020\u000bH\u0086\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcom/unity3d/ads/core/configuration/AlternativeFlowReader;", "", "configurationReader", "Lcom/unity3d/services/core/configuration/ConfigurationReader;", "sessionRepository", "Lcom/unity3d/ads/core/data/repository/SessionRepository;", "mediationMetadataReader", "Lcom/unity3d/ads/core/configuration/MediationTraitsMetadataReader;", "(Lcom/unity3d/services/core/configuration/ConfigurationReader;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/configuration/MediationTraitsMetadataReader;)V", "isAlternativeFlowEnabled", "Lkotlinx/coroutines/flow/MutableStateFlow;", "", "isAlternativeFlowRead", "invoke", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nAlternativeFlowReader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AlternativeFlowReader.kt\ncom/unity3d/ads/core/configuration/AlternativeFlowReader\n+ 2 MetadataReader.kt\ncom/unity3d/ads/core/configuration/MetadataReader\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,38:1\n7#2,7:39\n1#3:46\n*S KotlinDebug\n*F\n+ 1 AlternativeFlowReader.kt\ncom/unity3d/ads/core/configuration/AlternativeFlowReader\n*L\n21#1:39,7\n*E\n"})
/* loaded from: classes6.dex */
public final class AlternativeFlowReader {
    @NotNull
    private final ConfigurationReader configurationReader;
    @NotNull
    private final MutableStateFlow<Boolean> isAlternativeFlowEnabled;
    @NotNull
    private final MutableStateFlow<Boolean> isAlternativeFlowRead;
    @NotNull
    private final MediationTraitsMetadataReader mediationMetadataReader;
    @NotNull
    private final SessionRepository sessionRepository;

    public AlternativeFlowReader(@NotNull ConfigurationReader configurationReader, @NotNull SessionRepository sessionRepository, @NotNull MediationTraitsMetadataReader mediationTraitsMetadataReader) {
        this.configurationReader = configurationReader;
        this.sessionRepository = sessionRepository;
        this.mediationMetadataReader = mediationTraitsMetadataReader;
        Boolean bool = Boolean.FALSE;
        this.isAlternativeFlowRead = StateFlowKt.MutableStateFlow(bool);
        this.isAlternativeFlowEnabled = StateFlowKt.MutableStateFlow(bool);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0032, code lost:
        if (r0 == null) goto L30;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean invoke() {
        /*
            r4 = this;
            kotlinx.coroutines.flow.MutableStateFlow<java.lang.Boolean> r0 = r4.isAlternativeFlowRead
            java.lang.Object r0 = r0.getValue()
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto L1b
            kotlinx.coroutines.flow.MutableStateFlow<java.lang.Boolean> r0 = r4.isAlternativeFlowEnabled
            java.lang.Object r0 = r0.getValue()
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            return r0
        L1b:
            com.unity3d.ads.core.configuration.MediationTraitsMetadataReader r0 = r4.mediationMetadataReader
            com.unity3d.services.core.misc.JsonStorage r1 = r0.getJsonStorage()
            java.lang.String r0 = r0.getKey()
            java.lang.Object r0 = r1.get(r0)
            r1 = 0
            if (r0 == 0) goto L34
            boolean r2 = r0 instanceof org.json.JSONObject
            if (r2 == 0) goto L31
            goto L32
        L31:
            r0 = r1
        L32:
            if (r0 != 0) goto L35
        L34:
            r0 = r1
        L35:
            org.json.JSONObject r0 = (org.json.JSONObject) r0
            if (r0 == 0) goto L58
            java.lang.String r2 = "boldSdkEnabled"
            boolean r3 = r0.has(r2)
            if (r3 == 0) goto L42
            r1 = r0
        L42:
            if (r1 == 0) goto L58
            kotlinx.coroutines.flow.MutableStateFlow<java.lang.Boolean> r0 = r4.isAlternativeFlowEnabled
            boolean r1 = r1.optBoolean(r2)
            java.lang.Boolean r1 = java.lang.Boolean.valueOf(r1)
            r0.setValue(r1)
            kotlinx.coroutines.flow.MutableStateFlow<java.lang.Boolean> r0 = r4.isAlternativeFlowRead
            java.lang.Boolean r1 = java.lang.Boolean.TRUE
            r0.setValue(r1)
        L58:
            kotlinx.coroutines.flow.MutableStateFlow<java.lang.Boolean> r0 = r4.isAlternativeFlowRead
            java.lang.Object r0 = r0.getValue()
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 != 0) goto L9a
            kotlinx.coroutines.flow.MutableStateFlow<java.lang.Boolean> r0 = r4.isAlternativeFlowEnabled
            com.unity3d.services.core.configuration.ConfigurationReader r1 = r4.configurationReader
            com.unity3d.services.core.configuration.Configuration r1 = r1.getCurrentConfiguration()
            com.unity3d.services.core.configuration.IExperiments r1 = r1.getExperiments()
            boolean r1 = r1.isBoldSdkNextSessionEnabled()
            if (r1 != 0) goto L8b
            com.unity3d.ads.core.data.repository.SessionRepository r1 = r4.sessionRepository
            gatewayprotocol.v1.NativeConfigurationOuterClass$NativeConfiguration r1 = r1.getNativeConfiguration()
            gatewayprotocol.v1.NativeConfigurationOuterClass$FeatureFlags r1 = r1.getFeatureFlags()
            boolean r1 = r1.getBoldSdkNextSessionEnabled()
            if (r1 == 0) goto L89
            goto L8b
        L89:
            r1 = 0
            goto L8c
        L8b:
            r1 = 1
        L8c:
            java.lang.Boolean r1 = java.lang.Boolean.valueOf(r1)
            r0.setValue(r1)
            kotlinx.coroutines.flow.MutableStateFlow<java.lang.Boolean> r0 = r4.isAlternativeFlowRead
            java.lang.Boolean r1 = java.lang.Boolean.TRUE
            r0.setValue(r1)
        L9a:
            kotlinx.coroutines.flow.MutableStateFlow<java.lang.Boolean> r0 = r4.isAlternativeFlowEnabled
            java.lang.Object r0 = r0.getValue()
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.configuration.AlternativeFlowReader.invoke():boolean");
    }
}
