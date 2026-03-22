package com.unity3d.ads.core.data.repository;

import com.google.protobuf.ByteString;
import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001f\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ\u0019\u0010\u000b\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u0019\u0010\u000f\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u001f\u0010\u0011\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0013\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u001b\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00060\u0018H\u0016¢\u0006\u0004\b\u0019\u0010\u001aR \u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00060\u001b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR&\u0010\u001f\u001a\u0014\u0012\u0004\u0012\u00020\r\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u001e0\u001b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010\u001d¨\u0006 "}, d2 = {"Lcom/unity3d/ads/core/data/repository/AndroidAdRepository;", "Lcom/unity3d/ads/core/data/repository/AdRepository;", "<init>", "()V", "Lcom/google/protobuf/ByteString;", "opportunityId", "Lcom/unity3d/ads/core/data/model/AdObject;", "adObject", "", "addAd", "(Lcom/google/protobuf/ByteString;Lcom/unity3d/ads/core/data/model/AdObject;)V", "getAd", "(Lcom/google/protobuf/ByteString;)Lcom/unity3d/ads/core/data/model/AdObject;", "", HandleInvocationsFromAdViewer.KEY_PLACEMENT_ID, "pollOpportunityIdForPlacement", "(Ljava/lang/String;)Lcom/google/protobuf/ByteString;", "enqueueOpportunityForPlacement", "(Ljava/lang/String;Lcom/google/protobuf/ByteString;)V", "removeAd", "(Lcom/google/protobuf/ByteString;)V", "", "hasOpportunityId", "(Lcom/google/protobuf/ByteString;)Z", "", "getAllAds", "()Ljava/util/Map;", "j$/util/concurrent/ConcurrentHashMap", "loadedAds", "Lj$/util/concurrent/ConcurrentHashMap;", "", "placementsLoadedAds", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nAndroidAdRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidAdRepository.kt\ncom/unity3d/ads/core/data/repository/AndroidAdRepository\n+ 2 MapsJVM.kt\nkotlin/collections/MapsKt__MapsJVMKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,39:1\n73#2,2:40\n1#3:42\n*S KotlinDebug\n*F\n+ 1 AndroidAdRepository.kt\ncom/unity3d/ads/core/data/repository/AndroidAdRepository\n*L\n24#1:40,2\n24#1:42\n*E\n"})
/* loaded from: classes6.dex */
public final class AndroidAdRepository implements AdRepository {
    @NotNull
    private final ConcurrentHashMap<ByteString, AdObject> loadedAds = new ConcurrentHashMap<>();
    @NotNull
    private final ConcurrentHashMap<String, List<ByteString>> placementsLoadedAds = new ConcurrentHashMap<>();

    @Override // com.unity3d.ads.core.data.repository.AdRepository
    public void addAd(@NotNull ByteString byteString, @NotNull AdObject adObject) {
        this.loadedAds.put(byteString, adObject);
    }

    @Override // com.unity3d.ads.core.data.repository.AdRepository
    public void enqueueOpportunityForPlacement(@NotNull String str, @NotNull ByteString byteString) {
        List<ByteString> putIfAbsent;
        ConcurrentHashMap<String, List<ByteString>> concurrentHashMap = this.placementsLoadedAds;
        List<ByteString> list = concurrentHashMap.get(str);
        if (list == null && (putIfAbsent = concurrentHashMap.putIfAbsent(str, (list = new ArrayList<>()))) != null) {
            list = putIfAbsent;
        }
        list.add(byteString);
    }

    @Override // com.unity3d.ads.core.data.repository.AdRepository
    @Nullable
    public AdObject getAd(@NotNull ByteString byteString) {
        return this.loadedAds.get(byteString);
    }

    @Override // com.unity3d.ads.core.data.repository.AdRepository
    @NotNull
    public Map<ByteString, AdObject> getAllAds() {
        return MapsKt.toMap(this.loadedAds);
    }

    @Override // com.unity3d.ads.core.data.repository.AdRepository
    public boolean hasOpportunityId(@NotNull ByteString byteString) {
        return this.loadedAds.containsKey(byteString);
    }

    @Override // com.unity3d.ads.core.data.repository.AdRepository
    @Nullable
    public ByteString pollOpportunityIdForPlacement(@NotNull String str) {
        List<ByteString> list = this.placementsLoadedAds.get(str);
        if (list != null) {
            return (ByteString) CollectionsKt.removeFirstOrNull(list);
        }
        return null;
    }

    @Override // com.unity3d.ads.core.data.repository.AdRepository
    public void removeAd(@NotNull ByteString byteString) {
        this.loadedAds.remove(byteString);
    }
}
