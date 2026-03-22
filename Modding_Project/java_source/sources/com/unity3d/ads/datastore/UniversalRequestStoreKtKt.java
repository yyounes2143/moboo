package com.unity3d.ads.datastore;

import com.unity3d.ads.datastore.UniversalRequestStoreKt;
import com.unity3d.ads.datastore.UniversalRequestStoreOuterClass;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a*\u0010\u0000\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006H\u0087\bø\u0001\u0000¢\u0006\u0002\b\u0007\u001a)\u0010\b\u001a\u00020\u0001*\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006H\u0086\bø\u0001\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\t"}, d2 = {"universalRequestStore", "Lcom/unity3d/ads/datastore/UniversalRequestStoreOuterClass$UniversalRequestStore;", "block", "Lkotlin/Function1;", "Lcom/unity3d/ads/datastore/UniversalRequestStoreKt$Dsl;", "", "Lkotlin/ExtensionFunctionType;", "-initializeuniversalRequestStore", "copy", "unity-ads_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nUniversalRequestStoreKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UniversalRequestStoreKt.kt\ncom/unity3d/ads/datastore/UniversalRequestStoreKtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,95:1\n1#2:96\n*E\n"})
/* loaded from: classes6.dex */
public final class UniversalRequestStoreKtKt {
    @JvmName(name = "-initializeuniversalRequestStore")
    @NotNull
    /* renamed from: -initializeuniversalRequestStore  reason: not valid java name */
    public static final UniversalRequestStoreOuterClass.UniversalRequestStore m246initializeuniversalRequestStore(@NotNull Function1<? super UniversalRequestStoreKt.Dsl, Unit> function1) {
        UniversalRequestStoreKt.Dsl _create = UniversalRequestStoreKt.Dsl.Companion._create(UniversalRequestStoreOuterClass.UniversalRequestStore.newBuilder());
        function1.invoke(_create);
        return _create._build();
    }

    @NotNull
    public static final UniversalRequestStoreOuterClass.UniversalRequestStore copy(@NotNull UniversalRequestStoreOuterClass.UniversalRequestStore universalRequestStore, @NotNull Function1<? super UniversalRequestStoreKt.Dsl, Unit> function1) {
        UniversalRequestStoreKt.Dsl _create = UniversalRequestStoreKt.Dsl.Companion._create(universalRequestStore.toBuilder());
        function1.invoke(_create);
        return _create._build();
    }
}
