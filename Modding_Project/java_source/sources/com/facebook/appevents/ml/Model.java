package com.facebook.appevents.ml;

import androidx.annotation.RestrictTo;
import com.facebook.appevents.ml.ModelManager;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import java.io.File;
import java.util.HashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0011\n\u0002\b\u001a\n\u0002\u0010%\n\u0002\b\u0005\b\u0007\u0018\u0000 (2\u00020\u0001:\u0001(B\u001d\b\u0002\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0002¢\u0006\u0004\b\u0006\u0010\u0007J-\u0010\f\u001a\u0004\u0018\u00010\u00042\u0006\u0010\b\u001a\u00020\u00042\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00030\t2\u0006\u0010\u000b\u001a\u00020\u0003¢\u0006\u0004\b\f\u0010\rR\u0014\u0010\u0010\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0011\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\u000fR\u0014\u0010\u0013\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u000fR\u0014\u0010\u0015\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u000fR\u0014\u0010\u0017\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u000fR\u0014\u0010\u0019\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u000fR\u0014\u0010\u001b\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u000fR\u0014\u0010\u001d\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u000fR\u0014\u0010\u001f\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u000fR\u0014\u0010!\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010\u000fR\u0014\u0010#\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010\u000fR \u0010'\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040$8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b%\u0010&¨\u0006)"}, d2 = {"Lcom/facebook/appevents/ml/Model;", "", "", "", "Lcom/facebook/appevents/ml/MTensor;", "weights", "<init>", "(Ljava/util/Map;)V", "dense", "", "texts", "task", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/appevents/ml/MTensor;[Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/appevents/ml/MTensor;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcom/facebook/appevents/ml/MTensor;", "embedding", "convs0Weight", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "convs1Weight", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "convs2Weight", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "convs0Bias", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "convs1Bias", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "convs2Bias", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "fc1Weight", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "fc2Weight", "Wwwwwwwwwwwwwwwwwwwwwwwww", "fc1Bias", "Wwwwwwwwwwwwwwwwwwwwwwww", "fc2Bias", "", "Wwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/Map;", "finalWeights", "Companion", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes3.dex */
public final class Model {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Map<String, String> f6460Wwwwwwwwwwwwwwwwwwwwww = MapsKt.hashMapOf(TuplesKt.to("embedding.weight", "embed.weight"), TuplesKt.to("dense1.weight", "fc1.weight"), TuplesKt.to("dense2.weight", "fc2.weight"), TuplesKt.to("dense3.weight", "fc3.weight"), TuplesKt.to("dense1.bias", "fc1.bias"), TuplesKt.to("dense2.bias", "fc2.bias"), TuplesKt.to("dense3.bias", "fc3.bias"));
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Map<String, MTensor> f6461Wwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final MTensor f6462Wwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final MTensor f6463Wwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final MTensor f6464Wwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final MTensor f6465Wwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final MTensor f6466Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final MTensor f6467Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final MTensor f6468Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final MTensor f6469Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final MTensor f6470Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final MTensor f6471Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final MTensor f6472Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\bJ%\u0010\f\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\t2\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\f\u0010\rR\u0014\u0010\u000f\u001a\u00020\u000e8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R \u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, d2 = {"Lcom/facebook/appevents/ml/Model$Companion;", "", "<init>", "()V", "Ljava/io/File;", "file", "Lcom/facebook/appevents/ml/Model;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/io/File;)Lcom/facebook/appevents/ml/Model;", "", "", "Lcom/facebook/appevents/ml/MTensor;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/io/File;)Ljava/util/Map;", "", "SEQ_LEN", "I", "mapping", "Ljava/util/Map;", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Map<String, MTensor> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(File file) {
            Map<String, MTensor> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Utils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(file);
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                return null;
            }
            HashMap hashMap = new HashMap();
            Map Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Model.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            for (Map.Entry<String, MTensor> entry : Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.entrySet()) {
                String key = entry.getKey();
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.containsKey(entry.getKey()) && (key = (String) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.get(entry.getKey())) == null) {
                    return null;
                }
                hashMap.put(key, entry.getValue());
            }
            return hashMap;
        }

        @Nullable
        public final Model Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull File file) {
            Map<String, MTensor> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(file);
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                return null;
            }
            try {
                return new Model(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, null);
            } catch (Exception unused) {
                return null;
            }
        }

        public Companion() {
        }
    }

    public /* synthetic */ Model(Map map, DefaultConstructorMarker defaultConstructorMarker) {
        this(map);
    }

    public static final /* synthetic */ Map Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Model.class)) {
            return null;
        }
        try {
            return f6460Wwwwwwwwwwwwwwwwwwwwww;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, Model.class);
            return null;
        }
    }

    @Nullable
    public final MTensor Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull MTensor mTensor, @NotNull String[] strArr, @NotNull String str) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return null;
        }
        try {
            Operator operator = Operator.INSTANCE;
            MTensor Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Operator.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Operator.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(strArr, 128, this.f6472Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww), this.f6471Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            Operator.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, this.f6468Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            Operator.Wwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            MTensor Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = Operator.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, this.f6470Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            Operator.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3, this.f6467Wwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            Operator.Wwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3);
            MTensor Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Operator.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3, 2);
            MTensor Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4 = Operator.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwww2, this.f6469Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            Operator.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4, this.f6466Wwwwwwwwwwwwwwwwwwwwwwwwwwww);
            Operator.Wwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4);
            MTensor Wwwwwwwwwwwwwwwwwwwwwwwwwwww3 = Operator.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(1));
            MTensor Wwwwwwwwwwwwwwwwwwwwwwwwwwww4 = Operator.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(1));
            MTensor Wwwwwwwwwwwwwwwwwwwwwwwwwwww5 = Operator.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(1));
            Operator.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwww3, 1);
            Operator.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwww4, 1);
            Operator.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwww5, 1);
            MTensor Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Operator.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Operator.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new MTensor[]{Wwwwwwwwwwwwwwwwwwwwwwwwwwww3, Wwwwwwwwwwwwwwwwwwwwwwwwwwww4, Wwwwwwwwwwwwwwwwwwwwwwwwwwww5, mTensor}), this.f6465Wwwwwwwwwwwwwwwwwwwwwwwwwww, this.f6463Wwwwwwwwwwwwwwwwwwwwwwwww);
            Operator.Wwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            MTensor Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = Operator.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, this.f6464Wwwwwwwwwwwwwwwwwwwwwwwwww, this.f6462Wwwwwwwwwwwwwwwwwwwwwwww);
            Operator.Wwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3);
            MTensor mTensor2 = this.f6461Wwwwwwwwwwwwwwwwwwwwwww.get(Intrinsics.stringPlus(str, ".weight"));
            MTensor mTensor3 = this.f6461Wwwwwwwwwwwwwwwwwwwwwww.get(Intrinsics.stringPlus(str, ".bias"));
            if (mTensor2 != null && mTensor3 != null) {
                MTensor Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4 = Operator.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3, mTensor2, mTensor3);
                Operator.Wwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4);
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4;
            }
            return null;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            return null;
        }
    }

    public Model(Map<String, MTensor> map) {
        MTensor mTensor = map.get("embed.weight");
        if (mTensor != null) {
            this.f6472Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = mTensor;
            Operator operator = Operator.INSTANCE;
            MTensor mTensor2 = map.get("convs.0.weight");
            if (mTensor2 != null) {
                this.f6471Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Operator.Wwwwwwwwwwwwwwwwwwwwwww(mTensor2);
                MTensor mTensor3 = map.get("convs.1.weight");
                if (mTensor3 != null) {
                    this.f6470Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Operator.Wwwwwwwwwwwwwwwwwwwwwww(mTensor3);
                    MTensor mTensor4 = map.get("convs.2.weight");
                    if (mTensor4 != null) {
                        this.f6469Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Operator.Wwwwwwwwwwwwwwwwwwwwwww(mTensor4);
                        MTensor mTensor5 = map.get("convs.0.bias");
                        if (mTensor5 != null) {
                            this.f6468Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = mTensor5;
                            MTensor mTensor6 = map.get("convs.1.bias");
                            if (mTensor6 != null) {
                                this.f6467Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = mTensor6;
                                MTensor mTensor7 = map.get("convs.2.bias");
                                if (mTensor7 != null) {
                                    this.f6466Wwwwwwwwwwwwwwwwwwwwwwwwwwww = mTensor7;
                                    MTensor mTensor8 = map.get("fc1.weight");
                                    if (mTensor8 != null) {
                                        this.f6465Wwwwwwwwwwwwwwwwwwwwwwwwwww = Operator.Wwwwwwwwwwwwwwwwwwwwwwww(mTensor8);
                                        MTensor mTensor9 = map.get("fc2.weight");
                                        if (mTensor9 != null) {
                                            this.f6464Wwwwwwwwwwwwwwwwwwwwwwwwww = Operator.Wwwwwwwwwwwwwwwwwwwwwwww(mTensor9);
                                            MTensor mTensor10 = map.get("fc1.bias");
                                            if (mTensor10 != null) {
                                                this.f6463Wwwwwwwwwwwwwwwwwwwwwwwww = mTensor10;
                                                MTensor mTensor11 = map.get("fc2.bias");
                                                if (mTensor11 != null) {
                                                    this.f6462Wwwwwwwwwwwwwwwwwwwwwwww = mTensor11;
                                                    this.f6461Wwwwwwwwwwwwwwwwwwwwwww = new HashMap();
                                                    for (String str : SetsKt.setOf((Object[]) new String[]{ModelManager.Task.MTML_INTEGRITY_DETECT.toKey(), ModelManager.Task.MTML_APP_EVENT_PREDICTION.toKey()})) {
                                                        String stringPlus = Intrinsics.stringPlus(str, ".weight");
                                                        String stringPlus2 = Intrinsics.stringPlus(str, ".bias");
                                                        MTensor mTensor12 = map.get(stringPlus);
                                                        MTensor mTensor13 = map.get(stringPlus2);
                                                        if (mTensor12 != null) {
                                                            this.f6461Wwwwwwwwwwwwwwwwwwwwwww.put(stringPlus, Operator.Wwwwwwwwwwwwwwwwwwwwwwww(mTensor12));
                                                        }
                                                        if (mTensor13 != null) {
                                                            this.f6461Wwwwwwwwwwwwwwwwwwwwwww.put(stringPlus2, mTensor13);
                                                        }
                                                    }
                                                    return;
                                                }
                                                throw new IllegalStateException("Required value was null.");
                                            }
                                            throw new IllegalStateException("Required value was null.");
                                        }
                                        throw new IllegalStateException("Required value was null.");
                                    }
                                    throw new IllegalStateException("Required value was null.");
                                }
                                throw new IllegalStateException("Required value was null.");
                            }
                            throw new IllegalStateException("Required value was null.");
                        }
                        throw new IllegalStateException("Required value was null.");
                    }
                    throw new IllegalStateException("Required value was null.");
                }
                throw new IllegalStateException("Required value was null.");
            }
            throw new IllegalStateException("Required value was null.");
        }
        throw new IllegalStateException("Required value was null.");
    }
}
