package com.facebook.internal;

import android.graphics.Bitmap;
import android.net.Uri;
import com.facebook.FacebookContentProvider;
import com.facebook.FacebookException;
import com.facebook.FacebookSdk;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.io.FilesKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u001e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0016\bÆ\u0002\u0018\u00002\u00020\u0001:\u00011B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001f\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\t\u0010\nJ\u001f\u0010\r\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u000bH\u0007¢\u0006\u0004\b\r\u0010\u000eJ\u001f\u0010\u0012\u001a\u00020\u00112\u000e\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u000fH\u0007¢\u0006\u0004\b\u0012\u0010\u0013J%\u0010\u0017\u001a\u0004\u0018\u00010\u00162\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0007¢\u0006\u0004\b\u0017\u0010\u0018J\u0011\u0010\u0019\u001a\u0004\u0018\u00010\u0016H\u0007¢\u0006\u0004\b\u0019\u0010\u001aJ\u0011\u0010\u001b\u001a\u0004\u0018\u00010\u0016H\u0007¢\u0006\u0004\b\u001b\u0010\u001aJ!\u0010\u001e\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u001d\u001a\u00020\u001cH\u0007¢\u0006\u0004\b\u001e\u0010\u001fJ+\u0010!\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0015\u001a\u0004\u0018\u00010\u00142\u0006\u0010 \u001a\u00020\u001cH\u0007¢\u0006\u0004\b!\u0010\"J\u000f\u0010#\u001a\u00020\u0011H\u0007¢\u0006\u0004\b#\u0010\u0003J\u001f\u0010&\u001a\u00020\u00112\u0006\u0010$\u001a\u00020\u00062\u0006\u0010%\u001a\u00020\u0016H\u0002¢\u0006\u0004\b&\u0010'J'\u0010*\u001a\u00020\u00112\u0006\u0010(\u001a\u00020\u000b2\u0006\u0010)\u001a\u00020\u001c2\u0006\u0010%\u001a\u00020\u0016H\u0002¢\u0006\u0004\b*\u0010+R\u001c\u0010.\u001a\n ,*\u0004\u0018\u00010\u00140\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010-R\u0018\u00100\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010/¨\u00062"}, d2 = {"Lcom/facebook/internal/NativeAppCallAttachmentStore;", "", "<init>", "()V", "Ljava/util/UUID;", "callId", "Landroid/graphics/Bitmap;", "attachmentBitmap", "Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/util/UUID;Landroid/graphics/Bitmap;)Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;", "Landroid/net/Uri;", "attachmentUri", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/util/UUID;Landroid/net/Uri;)Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;", "", "attachments", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/util/Collection;)V", "", "attachmentName", "Ljava/io/File;", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/util/UUID;Ljava/lang/String;)Ljava/io/File;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/io/File;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "", "create", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/util/UUID;Z)Ljava/io/File;", "createDirs", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/util/UUID;Ljava/lang/String;Z)Ljava/io/File;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "bitmap", "outputFile", "Wwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/graphics/Bitmap;Ljava/io/File;)V", "imageUri", "isContentUri", "Wwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/net/Uri;ZLjava/io/File;)V", "kotlin.jvm.PlatformType", "Ljava/lang/String;", "TAG", "Ljava/io/File;", "attachmentsDirectory", "Attachment", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class NativeAppCallAttachmentStore {
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static File f6769Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull
    public static final NativeAppCallAttachmentStore INSTANCE = new NativeAppCallAttachmentStore();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final String f6770Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = NativeAppCallAttachmentStore.class.getName();

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\n\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\rR\u0019\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R\u0017\u0010\u0018\u001a\u00020\u00158\u0006¢\u0006\f\n\u0004\b\f\u0010\u0016\u001a\u0004\b\u000e\u0010\u0017R\u0019\u0010\u0019\u001a\u0004\u0018\u00010\u00158\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u0016\u001a\u0004\b\n\u0010\u0017R\"\u0010!\u001a\u00020\u001a8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R\"\u0010#\u001a\u00020\u001a8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001d\u0010\u001c\u001a\u0004\b\u001b\u0010\u001e\"\u0004\b\"\u0010 ¨\u0006$"}, d2 = {"Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;", "", "Ljava/util/UUID;", "callId", "Landroid/graphics/Bitmap;", "bitmap", "Landroid/net/Uri;", "originalUri", "<init>", "(Ljava/util/UUID;Landroid/graphics/Bitmap;Landroid/net/Uri;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/UUID;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/util/UUID;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/graphics/Bitmap;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Landroid/graphics/Bitmap;", "Landroid/net/Uri;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Landroid/net/Uri;", "", "Ljava/lang/String;", "()Ljava/lang/String;", "attachmentUrl", "attachmentName", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Z", "setContentUri", "(Z)V", "isContentUri", "setShouldCreateFile", "shouldCreateFile", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Attachment {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public boolean f6771Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public boolean f6772Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String f6773Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String f6774Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Uri f6775Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Bitmap f6776Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final UUID f6777Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public Attachment(@NotNull UUID uuid, @Nullable Bitmap bitmap, @Nullable Uri uri) {
            String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            this.f6777Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = uuid;
            this.f6776Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = bitmap;
            this.f6775Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = uri;
            boolean z = true;
            if (uri != null) {
                String scheme = uri.getScheme();
                if (StringsKt.equals("content", scheme, true)) {
                    this.f6772Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
                    String authority = uri.getAuthority();
                    this.f6771Wwwwwwwwwwwwwwwwwwwwwwwwwwww = (authority == null || StringsKt.startsWith$default(authority, "media", false, 2, (Object) null)) ? false : z;
                } else if (StringsKt.equals("file", uri.getScheme(), true)) {
                    this.f6771Wwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
                } else if (!Utility.Illlllllllllllllllllllllllll(uri)) {
                    throw new FacebookException(Intrinsics.stringPlus("Unsupported scheme for media Uri : ", scheme));
                }
            } else if (bitmap != null) {
                this.f6771Wwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
            } else {
                throw new FacebookException("Cannot share media without a bitmap or Uri set");
            }
            String uuid2 = this.f6771Wwwwwwwwwwwwwwwwwwwwwwwwwwww ? UUID.randomUUID().toString() : null;
            this.f6773Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = uuid2;
            if (!this.f6771Wwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = String.valueOf(uri);
            } else {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = FacebookContentProvider.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FacebookSdk.Wwwwwwwwwwwwwwwwwwwwww(), uuid, uuid2);
            }
            this.f6774Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        }

        public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f6772Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f6771Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @Nullable
        public final Uri Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f6775Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final UUID Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f6777Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @Nullable
        public final Bitmap Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f6776Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f6774Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @Nullable
        public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f6773Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
    }

    @JvmStatic
    @Nullable
    public static final File Wwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable UUID uuid, @Nullable String str) throws FileNotFoundException {
        if (!Utility.Kk(str) && uuid != null) {
            try {
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(uuid, str, false);
            } catch (IOException unused) {
                throw new FileNotFoundException();
            }
        }
        throw new FileNotFoundException();
    }

    @JvmStatic
    @Nullable
    public static final File Wwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull UUID uuid, boolean z) {
        if (f6769Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
            return null;
        }
        File file = new File(f6769Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, uuid.toString());
        if (z && !file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    @JvmStatic
    @Nullable
    public static final synchronized File Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        File file;
        synchronized (NativeAppCallAttachmentStore.class) {
            try {
                if (f6769Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
                    f6769Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new File(FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww().getCacheDir(), "com.facebook.NativeAppCallAttachmentStore.files");
                }
                file = f6769Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            } catch (Throwable th) {
                throw th;
            }
        }
        return file;
    }

    @JvmStatic
    @Nullable
    public static final File Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull UUID uuid, @Nullable String str, boolean z) throws IOException {
        File Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwww(uuid, z);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            return null;
        }
        try {
            return new File(Wwwwwwwwwwwwwwwwwwwwwwwwwww2, URLEncoder.encode(str, "UTF-8"));
        } catch (UnsupportedEncodingException unused) {
            return null;
        }
    }

    @JvmStatic
    @Nullable
    public static final File Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        File Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        }
        Wwwwwwwwwwwwwwwwwwwwwwwwwwww2.mkdirs();
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwww2;
    }

    @JvmStatic
    @NotNull
    public static final Attachment Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull UUID uuid, @NotNull Uri uri) {
        return new Attachment(uuid, null, uri);
    }

    @JvmStatic
    @NotNull
    public static final Attachment Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull UUID uuid, @NotNull Bitmap bitmap) {
        return new Attachment(uuid, bitmap, null);
    }

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        File Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            return;
        }
        FilesKt.deleteRecursively(Wwwwwwwwwwwwwwwwwwwwwwwwwwww2);
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0074  */
    @kotlin.jvm.JvmStatic
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@org.jetbrains.annotations.Nullable java.util.Collection<com.facebook.internal.NativeAppCallAttachmentStore.Attachment> r5) throws com.facebook.FacebookException {
        /*
            if (r5 == 0) goto L89
            boolean r0 = r5.isEmpty()
            if (r0 == 0) goto La
            goto L89
        La:
            java.io.File r0 = com.facebook.internal.NativeAppCallAttachmentStore.f6769Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            if (r0 != 0) goto L11
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()
        L11:
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            java.util.Iterator r5 = r5.iterator()     // Catch: java.io.IOException -> L52
        L1d:
            boolean r1 = r5.hasNext()     // Catch: java.io.IOException -> L52
            if (r1 == 0) goto L89
            java.lang.Object r1 = r5.next()     // Catch: java.io.IOException -> L52
            com.facebook.internal.NativeAppCallAttachmentStore$Attachment r1 = (com.facebook.internal.NativeAppCallAttachmentStore.Attachment) r1     // Catch: java.io.IOException -> L52
            boolean r2 = r1.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()     // Catch: java.io.IOException -> L52
            if (r2 != 0) goto L30
            goto L1d
        L30:
            java.util.UUID r2 = r1.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()     // Catch: java.io.IOException -> L52
            java.lang.String r3 = r1.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()     // Catch: java.io.IOException -> L52
            r4 = 1
            java.io.File r2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(r2, r3, r4)     // Catch: java.io.IOException -> L52
            if (r2 == 0) goto L1d
            r0.add(r2)     // Catch: java.io.IOException -> L52
            android.graphics.Bitmap r3 = r1.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()     // Catch: java.io.IOException -> L52
            if (r3 == 0) goto L54
            com.facebook.internal.NativeAppCallAttachmentStore r3 = com.facebook.internal.NativeAppCallAttachmentStore.INSTANCE     // Catch: java.io.IOException -> L52
            android.graphics.Bitmap r1 = r1.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()     // Catch: java.io.IOException -> L52
            r3.Wwwwwwwwwwwwwwwwwwwwwwwww(r1, r2)     // Catch: java.io.IOException -> L52
            goto L1d
        L52:
            r5 = move-exception
            goto L68
        L54:
            android.net.Uri r3 = r1.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()     // Catch: java.io.IOException -> L52
            if (r3 == 0) goto L1d
            com.facebook.internal.NativeAppCallAttachmentStore r3 = com.facebook.internal.NativeAppCallAttachmentStore.INSTANCE     // Catch: java.io.IOException -> L52
            android.net.Uri r4 = r1.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()     // Catch: java.io.IOException -> L52
            boolean r1 = r1.Wwwwwwwwwwwwwwwwwwwwwwwwwwww()     // Catch: java.io.IOException -> L52
            r3.Wwwwwwwwwwwwwwwwwwwwwwww(r4, r1, r2)     // Catch: java.io.IOException -> L52
            goto L1d
        L68:
            java.lang.String r1 = "Got unexpected exception:"
            kotlin.jvm.internal.Intrinsics.stringPlus(r1, r5)
            int r1 = r0.size()
            r2 = 0
        L72:
            if (r2 >= r1) goto L83
            java.lang.Object r3 = r0.get(r2)
            int r2 = r2 + 1
            java.io.File r3 = (java.io.File) r3
            if (r3 != 0) goto L7f
            goto L72
        L7f:
            r3.delete()     // Catch: java.lang.Exception -> L72
            goto L72
        L83:
            com.facebook.FacebookException r0 = new com.facebook.FacebookException
            r0.<init>(r5)
            throw r0
        L89:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.NativeAppCallAttachmentStore.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(java.util.Collection):void");
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwww(Uri uri, boolean z, File file) throws IOException {
        InputStream openInputStream;
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        try {
            if (!z) {
                openInputStream = new FileInputStream(uri.getPath());
            } else {
                openInputStream = FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww().getContentResolver().openInputStream(uri);
            }
            Utility.Wwwwwwwwwwwwwwwwww(openInputStream, fileOutputStream);
            Utility.Wwwwwwwwwwwwwwwwwwwwwwwww(fileOutputStream);
        } catch (Throwable th) {
            Utility.Wwwwwwwwwwwwwwwwwwwwwwwww(fileOutputStream);
            throw th;
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwww(Bitmap bitmap, File file) throws IOException {
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        try {
            bitmap.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
        } finally {
            Utility.Wwwwwwwwwwwwwwwwwwwwwwwww(fileOutputStream);
        }
    }
}
