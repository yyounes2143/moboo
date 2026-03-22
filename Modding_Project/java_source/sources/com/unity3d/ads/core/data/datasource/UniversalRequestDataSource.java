package com.unity3d.ads.core.data.datasource;

import androidx.datastore.core.DataStore;
import com.google.protobuf.ByteString;
import com.unity3d.ads.datastore.UniversalRequestStoreOuterClass;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlinx.coroutines.flow.FlowKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0013\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0002\u0010\u0005J\u0011\u0010\u0006\u001a\u00020\u0004H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u0007J\u0019\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\fJ!\u0010\r\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000fH\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u0010R\u0014\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0011"}, d2 = {"Lcom/unity3d/ads/core/data/datasource/UniversalRequestDataSource;", "", "universalRequestStore", "Landroidx/datastore/core/DataStore;", "Lcom/unity3d/ads/datastore/UniversalRequestStoreOuterClass$UniversalRequestStore;", "(Landroidx/datastore/core/DataStore;)V", "get", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "remove", "", "key", "", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "set", "data", "Lcom/google/protobuf/ByteString;", "(Ljava/lang/String;Lcom/google/protobuf/ByteString;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes6.dex */
public final class UniversalRequestDataSource {
    @NotNull
    private final DataStore<UniversalRequestStoreOuterClass.UniversalRequestStore> universalRequestStore;

    public UniversalRequestDataSource(@NotNull DataStore<UniversalRequestStoreOuterClass.UniversalRequestStore> dataStore) {
        this.universalRequestStore = dataStore;
    }

    @Nullable
    public final Object get(@NotNull Continuation<? super UniversalRequestStoreOuterClass.UniversalRequestStore> continuation) {
        return FlowKt.first(FlowKt.m1945catch(this.universalRequestStore.getData(), new UniversalRequestDataSource$get$2(null)), continuation);
    }

    @Nullable
    public final Object remove(@NotNull String str, @NotNull Continuation<? super Unit> continuation) {
        Object updateData = this.universalRequestStore.updateData(new UniversalRequestDataSource$remove$2(str, null), continuation);
        if (updateData == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            return updateData;
        }
        return Unit.INSTANCE;
    }

    @Nullable
    public final Object set(@NotNull String str, @NotNull ByteString byteString, @NotNull Continuation<? super Unit> continuation) {
        Object updateData = this.universalRequestStore.updateData(new UniversalRequestDataSource$set$2(str, byteString, null), continuation);
        if (updateData == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            return updateData;
        }
        return Unit.INSTANCE;
    }
}
