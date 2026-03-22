package com.vungle.ads.internal.persistence;

import androidx.annotation.VisibleForTesting;
import com.vungle.ads.internal.persistence.FilePreferences;
import com.vungle.ads.internal.util.CollectionsConcurrencyUtil;
import com.vungle.ads.internal.util.FileUtility;
import com.vungle.ads.internal.util.PathProvider;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.File;
import java.io.Serializable;
import java.util.HashMap;
import java.util.HashSet;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\r\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\b\u0005\u0018\u0000 02\u00020\u0001:\u00010B#\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\r\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\u000b\u0010\fJ\u001d\u0010\u0010\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0010\u0010\u0011J\u001d\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u000e¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0013\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\r\u001a\u00020\u0006¢\u0006\u0004\b\u0013\u0010\u0015J\u001d\u0010\u0010\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0006¢\u0006\u0004\b\u0010\u0010\u0016J\u0015\u0010\u0017\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u0006¢\u0006\u0004\b\u0017\u0010\u0018J\u001d\u0010\u0019\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u0006¢\u0006\u0004\b\u0019\u0010\u001aJ\u0017\u0010\u0019\u001a\u0004\u0018\u00010\u00062\u0006\u0010\r\u001a\u00020\u0006¢\u0006\u0004\b\u0019\u0010\u001bJ\u001d\u0010\u0010\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u001c¢\u0006\u0004\b\u0010\u0010\u001dJ\u001d\u0010\u001e\u001a\u00020\u001c2\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u001c¢\u0006\u0004\b\u001e\u0010\u001fJ1\u0010\u0010\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u00062\u001a\u0010\u000f\u001a\u0016\u0012\u0004\u0012\u00020\u0006\u0018\u00010 j\n\u0012\u0004\u0012\u00020\u0006\u0018\u0001`!¢\u0006\u0004\b\u0010\u0010\"J=\u0010#\u001a\u0012\u0012\u0004\u0012\u00020\u00060 j\b\u0012\u0004\u0012\u00020\u0006`!2\u0006\u0010\r\u001a\u00020\u00062\u0016\u0010\u0012\u001a\u0012\u0012\u0004\u0012\u00020\u00060 j\b\u0012\u0004\u0012\u00020\u0006`!¢\u0006\u0004\b#\u0010$J\u001d\u0010\u0010\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020%¢\u0006\u0004\b\u0010\u0010&J\u001d\u0010'\u001a\u00020%2\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020%¢\u0006\u0004\b'\u0010(R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010)R\u0014\u0010+\u001a\u00020*8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b+\u0010,R \u0010.\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00010-8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b.\u0010/¨\u00061"}, d2 = {"Lcom/vungle/ads/internal/persistence/FilePreferences;", "", "Ljava/util/concurrent/Executor;", "ioExecutor", "Lcom/vungle/ads/internal/util/PathProvider;", "pathProvider", "", "filename", "<init>", "(Ljava/util/concurrent/Executor;Lcom/vungle/ads/internal/util/PathProvider;Ljava/lang/String;)V", "", "apply", "()V", "key", "", "value", "put", "(Ljava/lang/String;Z)Lcom/vungle/ads/internal/persistence/FilePreferences;", "defaultValue", "getBoolean", "(Ljava/lang/String;Z)Z", "(Ljava/lang/String;)Ljava/lang/Boolean;", "(Ljava/lang/String;Ljava/lang/String;)Lcom/vungle/ads/internal/persistence/FilePreferences;", "remove", "(Ljava/lang/String;)Lcom/vungle/ads/internal/persistence/FilePreferences;", "getString", "(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;", "(Ljava/lang/String;)Ljava/lang/String;", "", "(Ljava/lang/String;I)Lcom/vungle/ads/internal/persistence/FilePreferences;", "getInt", "(Ljava/lang/String;I)I", "Ljava/util/HashSet;", "Lkotlin/collections/HashSet;", "(Ljava/lang/String;Ljava/util/HashSet;)Lcom/vungle/ads/internal/persistence/FilePreferences;", "getStringSet", "(Ljava/lang/String;Ljava/util/HashSet;)Ljava/util/HashSet;", "", "(Ljava/lang/String;J)Lcom/vungle/ads/internal/persistence/FilePreferences;", "getLong", "(Ljava/lang/String;J)J", "Ljava/util/concurrent/Executor;", "Ljava/io/File;", "file", "Ljava/io/File;", "j$/util/concurrent/ConcurrentHashMap", "values", "Lj$/util/concurrent/ConcurrentHashMap;", "Companion", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes6.dex */
public final class FilePreferences {
    @NotNull
    public static final String FILENAME = "settings_vungle";
    @NotNull
    public static final String TPAT_FAILED_FILENAME = "vngFailedTpats";
    @NotNull
    private final File file;
    @NotNull
    private final Executor ioExecutor;
    @NotNull
    private final ConcurrentHashMap<String, Object> values;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final ConcurrentHashMap<String, FilePreferences> filePreferenceMap = new ConcurrentHashMap<>();

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J)\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\t\u001a\u00020\bH\u0007¢\u0006\u0004\b\u000b\u0010\fR\u001a\u0010\r\u001a\u00020\b8\u0006X\u0087T¢\u0006\f\n\u0004\b\r\u0010\u000e\u0012\u0004\b\u000f\u0010\u0003R\u0014\u0010\u0010\u001a\u00020\b8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0010\u0010\u000eR \u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\n0\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013¨\u0006\u0014"}, d2 = {"Lcom/vungle/ads/internal/persistence/FilePreferences$Companion;", "", "<init>", "()V", "Ljava/util/concurrent/Executor;", "ioExecutor", "Lcom/vungle/ads/internal/util/PathProvider;", "pathProvider", "", "filename", "Lcom/vungle/ads/internal/persistence/FilePreferences;", "get", "(Ljava/util/concurrent/Executor;Lcom/vungle/ads/internal/util/PathProvider;Ljava/lang/String;)Lcom/vungle/ads/internal/persistence/FilePreferences;", "FILENAME", "Ljava/lang/String;", "getFILENAME$annotations", "TPAT_FAILED_FILENAME", "j$/util/concurrent/ConcurrentHashMap", "filePreferenceMap", "Lj$/util/concurrent/ConcurrentHashMap;", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ FilePreferences get$default(Companion companion, Executor executor, PathProvider pathProvider, String str, int i, Object obj) {
            if ((i & 4) != 0) {
                str = FilePreferences.FILENAME;
            }
            return companion.get(executor, pathProvider, str);
        }

        @JvmStatic
        @NotNull
        public final synchronized FilePreferences get(@NotNull Executor executor, @NotNull PathProvider pathProvider, @NotNull String str) {
            Object obj;
            Object putIfAbsent;
            try {
                ConcurrentHashMap concurrentHashMap = FilePreferences.filePreferenceMap;
                obj = concurrentHashMap.get(str);
                if (obj == null && (putIfAbsent = concurrentHashMap.putIfAbsent(str, (obj = new FilePreferences(executor, pathProvider, str, null)))) != null) {
                    obj = putIfAbsent;
                }
            } catch (Throwable th) {
                throw th;
            }
            return (FilePreferences) obj;
        }

        private Companion() {
        }

        @VisibleForTesting
        public static /* synthetic */ void getFILENAME$annotations() {
        }
    }

    public /* synthetic */ FilePreferences(Executor executor, PathProvider pathProvider, String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(executor, pathProvider, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: apply$lambda-0  reason: not valid java name */
    public static final void m331apply$lambda0(FilePreferences filePreferences, Serializable serializable) {
        FileUtility.writeSerializable(filePreferences.file, serializable);
    }

    @JvmStatic
    @NotNull
    public static final synchronized FilePreferences get(@NotNull Executor executor, @NotNull PathProvider pathProvider, @NotNull String str) {
        FilePreferences filePreferences;
        synchronized (FilePreferences.class) {
            filePreferences = Companion.get(executor, pathProvider, str);
        }
        return filePreferences;
    }

    public final void apply() {
        final HashMap hashMap = new HashMap(this.values);
        this.ioExecutor.execute(new Runnable() { // from class: Kkkkkkkkkkkkk.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                FilePreferences.m331apply$lambda0(FilePreferences.this, hashMap);
            }
        });
    }

    public final boolean getBoolean(@NotNull String str, boolean z) {
        Object obj = this.values.get(str);
        return obj instanceof Boolean ? ((Boolean) obj).booleanValue() : z;
    }

    public final int getInt(@NotNull String str, int i) {
        Object obj = this.values.get(str);
        if (obj instanceof Integer) {
            return ((Number) obj).intValue();
        }
        return i;
    }

    public final long getLong(@NotNull String str, long j) {
        Object obj = this.values.get(str);
        if (obj instanceof Long) {
            return ((Number) obj).longValue();
        }
        return j;
    }

    @NotNull
    public final String getString(@NotNull String str, @NotNull String str2) {
        Object obj = this.values.get(str);
        return obj instanceof String ? (String) obj : str2;
    }

    @NotNull
    public final HashSet<String> getStringSet(@NotNull String str, @NotNull HashSet<String> hashSet) {
        Object obj = this.values.get(str);
        if (obj instanceof HashSet) {
            return CollectionsConcurrencyUtil.getNewHashSet((HashSet) obj);
        }
        return hashSet;
    }

    @NotNull
    public final FilePreferences put(@NotNull String str, boolean z) {
        this.values.put(str, Boolean.valueOf(z));
        return this;
    }

    @NotNull
    public final FilePreferences remove(@NotNull String str) {
        if (this.values.containsKey(str)) {
            this.values.remove(str);
        }
        return this;
    }

    private FilePreferences(Executor executor, PathProvider pathProvider, String str) {
        this.ioExecutor = executor;
        File file = new File(pathProvider.getSharedPrefsDir(), str);
        this.file = file;
        ConcurrentHashMap<String, Object> concurrentHashMap = new ConcurrentHashMap<>();
        this.values = concurrentHashMap;
        Object readSerializable = FileUtility.readSerializable(file);
        if (readSerializable instanceof HashMap) {
            concurrentHashMap.putAll((HashMap) readSerializable);
        }
    }

    @NotNull
    public final FilePreferences put(@NotNull String str, @NotNull String str2) {
        this.values.put(str, str2);
        return this;
    }

    @Nullable
    public final Boolean getBoolean(@NotNull String str) {
        Object obj = this.values.get(str);
        if (obj instanceof Boolean) {
            return (Boolean) obj;
        }
        return null;
    }

    @Nullable
    public final String getString(@NotNull String str) {
        Object obj = this.values.get(str);
        if (obj instanceof String) {
            return (String) obj;
        }
        return null;
    }

    @NotNull
    public final FilePreferences put(@NotNull String str, int i) {
        this.values.put(str, Integer.valueOf(i));
        return this;
    }

    @NotNull
    public final FilePreferences put(@NotNull String str, @Nullable HashSet<String> hashSet) {
        this.values.put(str, CollectionsConcurrencyUtil.getNewHashSet(hashSet));
        return this;
    }

    @NotNull
    public final FilePreferences put(@NotNull String str, long j) {
        this.values.put(str, Long.valueOf(j));
        return this;
    }

    public /* synthetic */ FilePreferences(Executor executor, PathProvider pathProvider, String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(executor, pathProvider, (i & 4) != 0 ? FILENAME : str);
    }
}
