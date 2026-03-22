package com.cd_core4.cd_webview;

import android.annotation.SuppressLint;
import android.content.ContentUris;
import android.content.Context;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Environment;
import android.provider.DocumentsContract;
import android.provider.MediaStore;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0011\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001f\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\nJ!\u0010\u000b\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0003¢\u0006\u0004\b\u000b\u0010\nJ=\u0010\u000f\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010\f\u001a\u0004\u0018\u00010\b2\u000e\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\rH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J#\u0010\u0011\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0002¢\u0006\u0004\b\u0011\u0010\nJ\u0017\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0015\u0010\u0014J\u0017\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0016\u0010\u0014J\u0017\u0010\u0017\u001a\u00020\u00122\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0017\u0010\u0014J\u0017\u0010\u0018\u001a\u00020\u00122\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0018\u0010\u0014J!\u0010\u0019\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0019\u0010\nJ\u001f\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u001bH\u0002¢\u0006\u0004\b\u001d\u0010\u001e¨\u0006\u001f"}, d2 = {"Lcom/cd_core4/cd_webview/PhotoUriUtil;", "", "<init>", "()V", "Landroid/content/Context;", "context", "Landroid/net/Uri;", "uri", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "selection", "", "selectionArgs", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/net/Uri;)Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "inContext", "Landroid/graphics/Bitmap;", "inImage", "Wwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/net/Uri;", "cd_webview_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nPhotoUriUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PhotoUriUtil.kt\ncom/cd_core4/cd_webview/PhotoUriUtil\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,277:1\n37#2,2:278\n37#2,2:280\n*S KotlinDebug\n*F\n+ 1 PhotoUriUtil.kt\ncom/cd_core4/cd_webview/PhotoUriUtil\n*L\n83#1:278,2\n113#1:280,2\n*E\n"})
/* loaded from: classes3.dex */
public final class PhotoUriUtil {
    @NotNull
    public static final PhotoUriUtil INSTANCE = new PhotoUriUtil();

    public final Uri Wwwwwwwwwwwwwwwwwwwwwwww(Context context, Bitmap bitmap) {
        bitmap.compress(Bitmap.CompressFormat.JPEG, 100, new ByteArrayOutputStream());
        return Uri.parse(MediaStore.Images.Media.insertImage(context.getContentResolver(), bitmap, "Title", (String) null));
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwww(Uri uri) {
        return Intrinsics.areEqual("com.android.providers.media.documents", uri.getAuthority());
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwww(Uri uri) {
        return Intrinsics.areEqual("com.google.android.apps.photos.contentprovider", uri.getAuthority());
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwww(Uri uri) {
        return Intrinsics.areEqual("com.google.android.apps.photos.content", uri.getAuthority());
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Uri uri) {
        return Intrinsics.areEqual("com.android.externalstorage.documents", uri.getAuthority());
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Uri uri) {
        return Intrinsics.areEqual("com.android.providers.downloads.documents", uri.getAuthority());
    }

    @SuppressLint({"NewApi"})
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context, Uri uri) {
        Uri uri2 = null;
        if (DocumentsContract.isDocumentUri(context, uri)) {
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwww(uri)) {
                String documentId = DocumentsContract.getDocumentId(uri);
                String[] strArr = (String[]) StringsKt.split$default((CharSequence) documentId, new String[]{":"}, false, 0, 6, (Object) null).toArray(new String[0]);
                if (StringsKt.equals("primary", strArr[0], true)) {
                    if (strArr.length > 1) {
                        return Environment.getExternalStorageDirectory() + '/' + strArr[1];
                    }
                    StringBuilder sb = new StringBuilder();
                    sb.append(Environment.getExternalStorageDirectory());
                    sb.append('/');
                    return sb.toString();
                }
                return "storage/" + StringsKt.replace$default(documentId, ":", "/", false, 4, (Object) null);
            } else if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(uri)) {
                String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, uri);
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                    return Environment.getExternalStorageDirectory() + "/Download/" + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                }
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, ContentUris.withAppendedId(Uri.parse("content://downloads/public_downloads"), Long.parseLong(DocumentsContract.getDocumentId(uri))), null, null);
            } else if (Wwwwwwwwwwwwwwwwwwwwwwwww(uri)) {
                String[] strArr2 = (String[]) StringsKt.split$default((CharSequence) DocumentsContract.getDocumentId(uri), new String[]{":"}, false, 0, 6, (Object) null).toArray(new String[0]);
                String str = strArr2[0];
                int hashCode = str.hashCode();
                if (hashCode != 93166550) {
                    if (hashCode != 100313435) {
                        if (hashCode == 112202875 && str.equals("video")) {
                            uri2 = MediaStore.Video.Media.EXTERNAL_CONTENT_URI;
                        }
                    } else if (str.equals("image")) {
                        uri2 = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
                    }
                } else if (str.equals("audio")) {
                    uri2 = MediaStore.Audio.Media.EXTERNAL_CONTENT_URI;
                }
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, uri2, "_id=?", new String[]{strArr2[1]});
            }
        } else if (StringsKt.equals("content", uri.getScheme(), true)) {
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwww(uri)) {
                return uri.getLastPathSegment();
            }
            if (Wwwwwwwwwwwwwwwwwwwwwwwwww(uri)) {
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, uri);
            }
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, uri, null, null);
        } else if (StringsKt.equals("file", uri.getScheme(), true)) {
            return uri.getPath();
        }
        return null;
    }

    @Nullable
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context, @NotNull Uri uri) {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, uri);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.io.InputStream] */
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context, Uri uri) {
        InputStream inputStream;
        ?? r1 = 0;
        try {
            if (uri.getAuthority() != null) {
                try {
                    inputStream = context.getContentResolver().openInputStream(uri);
                    try {
                        String uri2 = Wwwwwwwwwwwwwwwwwwwwwwww(context, BitmapFactory.decodeStream(inputStream)).toString();
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                                return uri2;
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        }
                        return uri2;
                    } catch (Exception e2) {
                        e = e2;
                        e.printStackTrace();
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (Exception e3) {
                                e3.printStackTrace();
                            }
                        }
                        return null;
                    }
                } catch (Exception e4) {
                    e = e4;
                    inputStream = null;
                } catch (Throwable th) {
                    th = th;
                    if (r1 != 0) {
                        try {
                            r1.close();
                        } catch (Exception e5) {
                            e5.printStackTrace();
                        }
                    }
                    throw th;
                }
            }
            return null;
        } catch (Throwable th2) {
            th = th2;
            r1 = uri;
        }
    }

    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context, Uri uri) {
        Throwable th;
        Cursor cursor = null;
        try {
            Cursor query = context.getContentResolver().query(uri, new String[]{"_display_name"}, null, null, null);
            if (query != null) {
                try {
                    if (query.moveToFirst()) {
                        String string = query.getString(query.getColumnIndexOrThrow("_display_name"));
                        query.close();
                        return string;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    cursor = query;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            if (query != null) {
                query.close();
            }
            return null;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context, Uri uri, String str, String[] strArr) {
        Throwable th;
        Cursor cursor = null;
        try {
            Cursor query = context.getContentResolver().query(uri, new String[]{"_data"}, str, strArr, null);
            if (query != null) {
                try {
                    if (query.moveToFirst()) {
                        String string = query.getString(query.getColumnIndexOrThrow("_data"));
                        query.close();
                        return string;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    cursor = query;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            if (query != null) {
                query.close();
            }
            return null;
        } catch (Throwable th3) {
            th = th3;
        }
    }
}
