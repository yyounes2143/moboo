package com.fluttercandies.photo_manager.core;

import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.provider.MediaStore;
import com.fluttercandies.photo_manager.core.utils.IDBUtils;
import com.fluttercandies.photo_manager.util.LogUtils;
import com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.TPDownloadProxyEnum;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MethodChannel;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001:\u00016B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\r\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\u000b\u0010\fJ\r\u0010\r\u001a\u00020\n¢\u0006\u0004\b\r\u0010\fJ;\u0010\u0017\u001a\u00020\n2\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0011\u001a\u00020\u00102\b\u0010\u0013\u001a\u0004\u0018\u00010\u00122\b\u0010\u0014\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0016\u001a\u00020\u0015¢\u0006\u0004\b\u0017\u0010\u0018J#\u0010\u001b\u001a\u00020\n2\n\u0010\u001a\u001a\u00060\u0019R\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u001b\u0010\u001cR\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 R\u0016\u0010#\u001a\u00020!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010\"R\u0018\u0010&\u001a\u00060\u0019R\u00020\u00008\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010%R\u0018\u0010'\u001a\u00060\u0019R\u00020\u00008\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010%R\u0018\u0010(\u001a\u00060\u0019R\u00020\u00008\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010%R\u0014\u0010*\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010)R\u001c\u0010,\u001a\n +*\u0004\u0018\u00010\u000e0\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010)R\u001c\u0010.\u001a\n +*\u0004\u0018\u00010\u000e0\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b-\u0010)R\u001c\u00100\u001a\n +*\u0004\u0018\u00010\u000e0\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b/\u0010)R\u0014\u00104\u001a\u0002018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b2\u00103R\u0014\u00105\u001a\u00020\u00028BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b$\u0010 ¨\u00067"}, d2 = {"Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel;", "", "Landroid/content/Context;", "applicationContext", "Lio/flutter/plugin/common/BinaryMessenger;", "messenger", "Landroid/os/Handler;", "handler", "<init>", "(Landroid/content/Context;Lio/flutter/plugin/common/BinaryMessenger;Landroid/os/Handler;)V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/net/Uri;", "uri", "", "changeType", "", "id", "galleryId", "", "observerType", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;I)V", "Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel$MediaObserver;", "mediaObserver", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel$MediaObserver;Landroid/net/Uri;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/content/Context;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Landroid/content/Context;", "", "Z", "notifying", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel$MediaObserver;", "videoObserver", "imageObserver", "audioObserver", "Landroid/net/Uri;", "allUri", "kotlin.jvm.PlatformType", "imageUri", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "videoUri", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "audioUri", "Lio/flutter/plugin/common/MethodChannel;", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Lio/flutter/plugin/common/MethodChannel;", "methodChannel", "context", "MediaObserver", "photo_manager_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class PhotoManagerNotifyChannel {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final MethodChannel f7374Wwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final MediaObserver f7379Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final MediaObserver f7380Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final MediaObserver f7381Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f7382Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Context f7383Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Uri f7378Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = IDBUtils.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Uri f7377Wwwwwwwwwwwwwwwwwwwwwwwwwwww = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Uri f7376Wwwwwwwwwwwwwwwwwwwwwwwwwww = MediaStore.Video.Media.EXTERNAL_CONTENT_URI;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Uri f7375Wwwwwwwwwwwwwwwwwwwwwwwwww = MediaStore.Audio.Media.EXTERNAL_CONTENT_URI;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J!\u0010\r\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b\r\u0010\u000eJ/\u0010\u0013\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u000f\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u00112\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0013\u0010\u0014R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\"\u0010\u000b\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u0011\u0010!\u001a\u00020\u001f8F¢\u0006\u0006\u001a\u0004\b\u0015\u0010 R\u0011\u0010$\u001a\u00020\"8F¢\u0006\u0006\u001a\u0004\b\u0019\u0010#¨\u0006%"}, d2 = {"Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel$MediaObserver;", "Landroid/database/ContentObserver;", "", "type", "Landroid/os/Handler;", "handler", "<init>", "(Lcom/fluttercandies/photo_manager/core/PhotoManagerNotifyChannel;ILandroid/os/Handler;)V", "", "selfChange", "Landroid/net/Uri;", "uri", "", "onChange", "(ZLandroid/net/Uri;)V", "", "id", "Lkotlin/Pair;", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(JI)Lkotlin/Pair;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "I", "getType", "()I", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/net/Uri;", "getUri", "()Landroid/net/Uri;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/net/Uri;)V", "Landroid/content/Context;", "()Landroid/content/Context;", "context", "Landroid/content/ContentResolver;", "()Landroid/content/ContentResolver;", "cr", "photo_manager_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public final class MediaObserver extends ContentObserver {
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Uri f7385Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final int f7386Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public MediaObserver(int i, @NotNull Handler handler) {
            super(handler);
            this.f7386Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
            this.f7385Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Uri.parse("content://media");
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Uri uri) {
            this.f7385Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = uri;
        }

        public final Pair<Long, String> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(long j, int i) {
            Cursor cursor;
            if (Build.VERSION.SDK_INT >= 29) {
                Cursor query = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().query(PhotoManagerNotifyChannel.this.f7378Wwwwwwwwwwwwwwwwwwwwwwwwwwwww, new String[]{"bucket_id", "bucket_display_name"}, "_id = ?", new String[]{String.valueOf(j)}, null);
                if (query != null) {
                    cursor = query;
                    try {
                        Cursor cursor2 = cursor;
                        if (query.moveToNext()) {
                            long j2 = query.getLong(query.getColumnIndex("bucket_id"));
                            Pair<Long, String> pair = new Pair<>(Long.valueOf(j2), query.getString(query.getColumnIndex("bucket_display_name")));
                            CloseableKt.closeFinally(cursor, null);
                            return pair;
                        }
                        Unit unit = Unit.INSTANCE;
                        CloseableKt.closeFinally(cursor, null);
                    } finally {
                    }
                }
            } else if (i == 2) {
                Cursor query2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().query(PhotoManagerNotifyChannel.this.f7378Wwwwwwwwwwwwwwwwwwwwwwwwwwwww, new String[]{"album_id", "album"}, "_id = ?", new String[]{String.valueOf(j)}, null);
                if (query2 != null) {
                    cursor = query2;
                    try {
                        Cursor cursor3 = cursor;
                        if (query2.moveToNext()) {
                            long j3 = query2.getLong(query2.getColumnIndex("album_id"));
                            Pair<Long, String> pair2 = new Pair<>(Long.valueOf(j3), query2.getString(query2.getColumnIndex("album")));
                            CloseableKt.closeFinally(cursor, null);
                            return pair2;
                        }
                        Unit unit2 = Unit.INSTANCE;
                        CloseableKt.closeFinally(cursor, null);
                    } finally {
                        try {
                            throw th;
                        } finally {
                        }
                    }
                }
            } else {
                Cursor query3 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().query(PhotoManagerNotifyChannel.this.f7378Wwwwwwwwwwwwwwwwwwwwwwwwwwwww, new String[]{"bucket_id", "bucket_display_name"}, "_id = ?", new String[]{String.valueOf(j)}, null);
                if (query3 != null) {
                    cursor = query3;
                    try {
                        Cursor cursor4 = cursor;
                        if (query3.moveToNext()) {
                            long j4 = query3.getLong(query3.getColumnIndex("bucket_id"));
                            Pair<Long, String> pair3 = new Pair<>(Long.valueOf(j4), query3.getString(query3.getColumnIndex("bucket_display_name")));
                            CloseableKt.closeFinally(cursor, null);
                            return pair3;
                        }
                        Unit unit3 = Unit.INSTANCE;
                        CloseableKt.closeFinally(cursor, null);
                    } finally {
                        try {
                            throw th;
                        } finally {
                        }
                    }
                }
            }
            return new Pair<>(null, null);
        }

        @NotNull
        public final ContentResolver Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().getContentResolver();
        }

        @NotNull
        public final Context Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return PhotoManagerNotifyChannel.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z, @Nullable Uri uri) {
            Long l;
            String str;
            if (uri != null) {
                String lastPathSegment = uri.getLastPathSegment();
                if (lastPathSegment != null) {
                    l = StringsKt.toLongOrNull(lastPathSegment);
                } else {
                    l = null;
                }
                if (l != null) {
                    Cursor query = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().query(PhotoManagerNotifyChannel.this.f7378Wwwwwwwwwwwwwwwwwwwwwwwwwwwww, new String[]{"date_added", "date_modified", "media_type"}, "_id = ?", new String[]{l.toString()}, null);
                    if (query != null) {
                        Cursor cursor = query;
                        PhotoManagerNotifyChannel photoManagerNotifyChannel = PhotoManagerNotifyChannel.this;
                        try {
                            Cursor cursor2 = cursor;
                            if (!query.moveToNext()) {
                                photoManagerNotifyChannel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(uri, "delete", l, null, this.f7386Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                                CloseableKt.closeFinally(cursor, null);
                                return;
                            }
                            if ((System.currentTimeMillis() / 1000) - query.getLong(query.getColumnIndex("date_added")) < 30) {
                                str = "insert";
                            } else {
                                str = "update";
                            }
                            int i = query.getInt(query.getColumnIndex("media_type"));
                            Pair<Long, String> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(l.longValue(), i);
                            Long component1 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.component1();
                            String component2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.component2();
                            if (component1 != null && component2 != null) {
                                photoManagerNotifyChannel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(uri, str, l, component1, i);
                                Unit unit = Unit.INSTANCE;
                                CloseableKt.closeFinally(cursor, null);
                                return;
                            }
                            CloseableKt.closeFinally(cursor, null);
                        } catch (Throwable th) {
                            try {
                                throw th;
                            } catch (Throwable th2) {
                                CloseableKt.closeFinally(cursor, th);
                                throw th2;
                            }
                        }
                    }
                } else if (Build.VERSION.SDK_INT < 29 && Intrinsics.areEqual(uri, this.f7385Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
                    PhotoManagerNotifyChannel.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(uri, "insert", null, null, this.f7386Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                } else {
                    PhotoManagerNotifyChannel.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(uri, "delete", null, null, this.f7386Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                }
            }
        }
    }

    public PhotoManagerNotifyChannel(@NotNull Context context, @NotNull BinaryMessenger binaryMessenger, @NotNull Handler handler) {
        this.f7383Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = context;
        this.f7381Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new MediaObserver(3, handler);
        this.f7380Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new MediaObserver(1, handler);
        this.f7379Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new MediaObserver(2, handler);
        this.f7374Wwwwwwwwwwwwwwwwwwwwwwwww = new MethodChannel(binaryMessenger, "com.fluttercandies/photo_manager/notify");
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (!this.f7382Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            return;
        }
        this.f7382Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = false;
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().getContentResolver().unregisterContentObserver(this.f7380Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().getContentResolver().unregisterContentObserver(this.f7381Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().getContentResolver().unregisterContentObserver(this.f7379Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (this.f7382Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            return;
        }
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f7380Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f7377Wwwwwwwwwwwwwwwwwwwwwwwwwwww);
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f7381Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f7376Wwwwwwwwwwwwwwwwwwwwwwwwwww);
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f7379Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f7375Wwwwwwwwwwwwwwwwwwwwwwwwww);
        this.f7382Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MediaObserver mediaObserver, Uri uri) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().getContentResolver().registerContentObserver(uri, true, mediaObserver);
        mediaObserver.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(uri);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Uri uri, @NotNull String str, @Nullable Long l, @Nullable Long l2, int i) {
        HashMap hashMapOf = MapsKt.hashMapOf(TuplesKt.to(TPDownloadProxyEnum.USER_PLATFORM, "android"), TuplesKt.to("uri", String.valueOf(uri)), TuplesKt.to("type", str), TuplesKt.to("mediaType", Integer.valueOf(i)));
        if (l != null) {
            hashMapOf.put("id", l);
        }
        if (l2 != null) {
            hashMapOf.put("galleryId", l2);
        }
        LogUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(hashMapOf);
        this.f7374Wwwwwwwwwwwwwwwwwwwwwwwww.invokeMethod("change", hashMapOf);
    }

    public final Context Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f7383Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final Context Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f7383Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }
}
