package com.unity3d.ads.core.configuration;

import com.unity3d.services.core.misc.JsonStorage;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\b&\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J$\u0010\f\u001a\u0004\u0018\u0001H\u0001\"\u0006\b\u0001\u0010\u0001\u0018\u00012\n\b\u0002\u0010\r\u001a\u0004\u0018\u0001H\u0001H\u0086\b¢\u0006\u0002\u0010\u000eJ$\u0010\u000f\u001a\u0004\u0018\u0001H\u0001\"\u0006\b\u0001\u0010\u0001\u0018\u00012\n\b\u0002\u0010\r\u001a\u0004\u0018\u0001H\u0001H\u0086\b¢\u0006\u0002\u0010\u000eR\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0010"}, d2 = {"Lcom/unity3d/ads/core/configuration/MetadataReader;", "T", "", "jsonStorage", "Lcom/unity3d/services/core/misc/JsonStorage;", "key", "", "(Lcom/unity3d/services/core/misc/JsonStorage;Ljava/lang/String;)V", "getJsonStorage", "()Lcom/unity3d/services/core/misc/JsonStorage;", "getKey", "()Ljava/lang/String;", "read", "defaultValue", "(Ljava/lang/Object;)Ljava/lang/Object;", "readAndDelete", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nMetadataReader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MetadataReader.kt\ncom/unity3d/ads/core/configuration/MetadataReader\n*L\n1#1,24:1\n8#1,6:25\n*S KotlinDebug\n*F\n+ 1 MetadataReader.kt\ncom/unity3d/ads/core/configuration/MetadataReader\n*L\n17#1:25,6\n*E\n"})
/* loaded from: classes6.dex */
public abstract class MetadataReader<T> {
    @NotNull
    private final JsonStorage jsonStorage;
    @NotNull
    private final String key;

    public MetadataReader(@NotNull JsonStorage jsonStorage, @NotNull String str) {
        this.jsonStorage = jsonStorage;
        this.key = str;
    }

    public static /* synthetic */ Object read$default(MetadataReader metadataReader, Object obj, int i, Object obj2) {
        if (obj2 == null) {
            if ((i & 1) != 0) {
                obj = null;
            }
            Object obj3 = metadataReader.getJsonStorage().get(metadataReader.getKey());
            if (obj3 != null) {
                Intrinsics.reifiedOperationMarker(3, "T");
                return obj3;
            }
            return obj;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: read");
    }

    public static /* synthetic */ Object readAndDelete$default(MetadataReader metadataReader, Object obj, int i, Object obj2) {
        if (obj2 == null) {
            if ((i & 1) != 0) {
                obj = null;
            }
            Object obj3 = metadataReader.getJsonStorage().get(metadataReader.getKey());
            if (obj3 != null) {
                Intrinsics.reifiedOperationMarker(3, "T");
                obj = obj3;
            }
            if (metadataReader.getJsonStorage().get(metadataReader.getKey()) != null) {
                metadataReader.getJsonStorage().delete(metadataReader.getKey());
            }
            return obj;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: readAndDelete");
    }

    @NotNull
    public final JsonStorage getJsonStorage() {
        return this.jsonStorage;
    }

    @NotNull
    public final String getKey() {
        return this.key;
    }

    public final /* synthetic */ <T> T read(T t) {
        T t2 = (T) getJsonStorage().get(getKey());
        if (t2 != null) {
            Intrinsics.reifiedOperationMarker(3, "T");
            return t2;
        }
        return t;
    }

    public final /* synthetic */ <T> T readAndDelete(T t) {
        Object obj = getJsonStorage().get(getKey());
        if (obj != null) {
            Intrinsics.reifiedOperationMarker(3, "T");
            t = obj;
        }
        if (getJsonStorage().get(getKey()) != null) {
            getJsonStorage().delete(getKey());
        }
        return t;
    }
}
