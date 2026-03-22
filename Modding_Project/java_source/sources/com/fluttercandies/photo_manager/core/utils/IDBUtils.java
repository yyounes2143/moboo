package com.fluttercandies.photo_manager.core.utils;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.media.MediaMetadataRetriever;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.provider.MediaStore;
import androidx.annotation.ChecksSdkIntAtLeast;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.NotificationCompat;
import androidx.exifinterface.media.ExifInterface;
import com.fluttercandies.photo_manager.core.entity.AssetEntity;
import com.fluttercandies.photo_manager.core.entity.AssetPathEntity;
import com.fluttercandies.photo_manager.core.entity.filter.FilterOption;
import com.fluttercandies.photo_manager.core.utils.IDBUtils;
import com.fluttercandies.photo_manager.core.utils.VideoUtils;
import com.fluttercandies.photo_manager.util.LogUtils;
import com.google.firebase.crashlytics.internal.metadata.UserMetadata;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.io.ByteStreamsKt;
import kotlin.io.CloseableKt;
import kotlin.io.FilesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0010\u0012\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u0001\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\bf\u0018\u0000 \u0084\u00012\u00020\u0001:\u0002\u0084\u0001J\u0015\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H&¢\u0006\u0004\b\u0004\u0010\u0005J/\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\f2\u0006\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH&¢\u0006\u0004\b\u000e\u0010\u000fJG\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00130\f2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\b2\u0006\u0010\u0012\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH&¢\u0006\u0004\b\u0014\u0010\u0015JE\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00130\f2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\b2\u0006\u0010\u0018\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH&¢\u0006\u0004\b\u0019\u0010\u0015J+\u0010\u001d\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u00032\b\b\u0002\u0010\u001c\u001a\u00020\u001bH&¢\u0006\u0004\b\u001d\u0010\u001eJ\u0017\u0010 \u001a\u00020\b2\u0006\u0010\u001f\u001a\u00020\bH\u0016¢\u0006\u0004\b \u0010!J\u001b\u0010$\u001a\u00020\b*\u00020\"2\u0006\u0010#\u001a\u00020\u0003H\u0016¢\u0006\u0004\b$\u0010%J\u001b\u0010&\u001a\u00020\u0003*\u00020\"2\u0006\u0010#\u001a\u00020\u0003H\u0016¢\u0006\u0004\b&\u0010'J\u001b\u0010)\u001a\u00020(*\u00020\"2\u0006\u0010#\u001a\u00020\u0003H\u0016¢\u0006\u0004\b)\u0010*J1\u0010,\u001a\u0004\u0018\u00010\u0013*\u00020\"2\u0006\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\u001c\u001a\u00020\u001b2\b\b\u0002\u0010+\u001a\u00020\u001bH\u0016¢\u0006\u0004\b,\u0010-J1\u0010.\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u001f\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH&¢\u0006\u0004\b.\u0010/JI\u00107\u001a\u00020\u00132\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u00101\u001a\u0002002\u0006\u00102\u001a\u00020\u00032\u0006\u00103\u001a\u00020\u00032\u0006\u00104\u001a\u00020\u00032\u0006\u00105\u001a\u00020\u00032\b\u00106\u001a\u0004\u0018\u00010\bH\u0016¢\u0006\u0004\b7\u00108JA\u0010:\u001a\u00020\u00132\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u00109\u001a\u00020\u00032\u0006\u00103\u001a\u00020\u00032\u0006\u00104\u001a\u00020\u00032\u0006\u00105\u001a\u00020\u00032\b\u00106\u001a\u0004\u0018\u00010\bH\u0016¢\u0006\u0004\b:\u0010;JA\u0010<\u001a\u00020\u00132\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u00109\u001a\u00020\u00032\u0006\u00103\u001a\u00020\u00032\u0006\u00104\u001a\u00020\u00032\u0006\u00105\u001a\u00020\u00032\b\u00106\u001a\u0004\u0018\u00010\bH\u0016¢\u0006\u0004\b<\u0010;J\u001f\u0010=\u001a\u00020\u001b2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u0003H\u0016¢\u0006\u0004\b=\u0010>J'\u0010@\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u00032\u0006\u0010?\u001a\u00020\u001bH&¢\u0006\u0004\b@\u0010AJ!\u0010C\u001a\u0004\u0018\u00010B2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u0003H&¢\u0006\u0004\bC\u0010DJ'\u0010G\u001a\u0002002\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010E\u001a\u00020\u00132\u0006\u0010F\u001a\u00020\u001bH&¢\u0006\u0004\bG\u0010HJ'\u0010I\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020(2\u0006\u0010\u001f\u001a\u00020\bH\u0016¢\u0006\u0004\bI\u0010JJ-\u0010K\u001a\b\u0012\u0004\u0012\u00020\r0\f2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH&¢\u0006\u0004\bK\u0010\u000fJ'\u0010M\u001a\u00020\u00132\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010L\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u0003H&¢\u0006\u0004\bM\u0010NJ'\u0010O\u001a\u00020\u00132\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010L\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u0003H&¢\u0006\u0004\bO\u0010NJ)\u0010R\u001a\u00020Q2\u0006\u0010\u001a\u001a\u00020(2\u0006\u0010\u001f\u001a\u00020\b2\b\b\u0002\u0010P\u001a\u00020\u001bH\u0016¢\u0006\u0004\bR\u0010SJ\u0017\u0010T\u001a\u00020\u001b2\u0006\u0010\u0007\u001a\u00020\u0006H&¢\u0006\u0004\bT\u0010UJ\u0017\u0010W\u001a\u00020V2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\bW\u0010XJ+\u0010Z\u001a\b\u0012\u0004\u0012\u00020\u00030\f2\u0006\u0010\u0007\u001a\u00020\u00062\f\u0010Y\u001a\b\u0012\u0004\u0012\u00020\u00030\fH\u0016¢\u0006\u0004\bZ\u0010[J\u001f\u0010]\u001a\u00020V2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\\\u001a\u00020\rH\u0016¢\u0006\u0004\b]\u0010^J!\u0010_\u001a\u0004\u0018\u00010(2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u0003H\u0016¢\u0006\u0004\b_\u0010`J\u001d\u0010a\u001a\b\u0012\u0004\u0012\u00020\u00030\f2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\ba\u0010bJ'\u0010c\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\bc\u0010dJ/\u0010e\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u0016\u001a\u00020\u0003H\u0016¢\u0006\u0004\be\u0010fJ=\u0010g\u001a\b\u0012\u0004\u0012\u00020\u00130\f2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0017\u001a\u00020\b2\u0006\u0010\u0018\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\bg\u0010hJO\u0010o\u001a\u00020\"*\u00020i2\u0006\u0010j\u001a\u00020Q2\u000e\u0010k\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00022\b\u0010l\u001a\u0004\u0018\u00010\u00032\u000e\u0010m\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00022\b\u0010n\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\bo\u0010pJ\u001f\u0010q\u001a\u00020V2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u0003H\u0016¢\u0006\u0004\bq\u0010rJ\u0017\u0010u\u001a\u00020t2\u0006\u0010s\u001a\u00020\u0003H\u0016¢\u0006\u0004\bu\u0010vJ\u0017\u0010w\u001a\u00020t2\u0006\u0010\u001a\u001a\u00020\u0001H\u0016¢\u0006\u0004\bw\u0010xJ:\u0010\u007f\u001a\u00020\u00132\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010z\u001a\u00020y2\u0006\u0010{\u001a\u00020Q2\u0006\u0010}\u001a\u00020|2\b\b\u0002\u0010~\u001a\u00020\u001bH\u0002¢\u0006\u0005\b\u007f\u0010\u0080\u0001R\u0017\u0010\u0083\u0001\u001a\u00020Q8VX\u0096\u0004¢\u0006\b\u001a\u0006\b\u0081\u0001\u0010\u0082\u0001¨\u0006\u0085\u0001"}, d2 = {"Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;", "", "", "", UserMetadata.KEYDATA_FILENAME, "()[Ljava/lang/String;", "Landroid/content/Context;", "context", "", "requestType", "Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;", "option", "", "Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;", "Wwwwwwww", "(Landroid/content/Context;ILcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;)Ljava/util/List;", "pathId", "page", "size", "Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;", "Wwwwwwwww", "(Landroid/content/Context;Ljava/lang/String;IIILcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;)Ljava/util/List;", "galleryId", "start", "end", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "id", "", "checkIfExists", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;Ljava/lang/String;Z)Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;", "type", "Wwwwww", "(I)I", "Landroid/database/Cursor;", "columnName", "Wwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/database/Cursor;Ljava/lang/String;)I", "Wwwwwww", "(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;", "", "Wwwwwwwwwww", "(Landroid/database/Cursor;Ljava/lang/String;)J", "throwIfNotExists", "Wwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/database/Cursor;Landroid/content/Context;ZZ)Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;", "Wwwwwwwwwwwwwwwwww", "(Landroid/content/Context;Ljava/lang/String;ILcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;)Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;", "", "bytes", "filename", CampaignEx.JSON_KEY_TITLE, CampaignEx.JSON_KEY_DESC, "relativePath", "orientation", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;", "filePath", "Wwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;", "Wwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;Ljava/lang/String;)Z", "origin", "Wwwww", "(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;", "Landroidx/exifinterface/media/ExifInterface;", "Www", "(Landroid/content/Context;Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface;", "asset", "needLocationPermission", "Kkkkkkkkkkkkkkkkkkkkkkkkkk", "(Landroid/content/Context;Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;Z)[B", "Kkkkkkkkkkkkkkkkkkkkkkk", "(Landroid/content/Context;JI)Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "assetId", "Wwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;", "Kkkkkkkkkkkkkkkkkkkkkkkkk", "isOrigin", "Landroid/net/Uri;", "Wwwwwwwwwwwwwwww", "(JIZ)Landroid/net/Uri;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;)Z", "", "Wwwwwwwwwwww", "(Landroid/content/Context;)V", "ids", "Wwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;", "entity", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Long;", "Wwwwwwwwwwwwww", "(Landroid/content/Context;)Ljava/util/List;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;I)I", "Wwwwwwwwwwwww", "(Landroid/content/Context;Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;ILjava/lang/String;)I", "Wwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;III)Ljava/util/List;", "Landroid/content/ContentResolver;", "uri", "projection", "selection", "selectionArgs", "sortOrder", "Wwwwwwwwwwwwwwwww", "(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;", "Wwwwwwwwww", "(Landroid/content/Context;Ljava/lang/String;)V", NotificationCompat.CATEGORY_MESSAGE, "", "Kkkkkkkkkkkkkkkkkkkkkkkk", "(Ljava/lang/String;)Ljava/lang/Void;", "Wwww", "(Ljava/lang/Object;)Ljava/lang/Void;", "Ljava/io/InputStream;", "inputStream", "contentUri", "Landroid/content/ContentValues;", "values", "shouldKeepPath", "insertUri", "(Landroid/content/Context;Ljava/io/InputStream;Landroid/net/Uri;Landroid/content/ContentValues;Z)Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;", "Wwwwwwwwwwwwwwwwwww", "()Landroid/net/Uri;", "allUri", "Companion", "photo_manager_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes4.dex */
public interface IDBUtils {
    @NotNull
    public static final Companion Companion = Companion.f7472Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u0011\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u001a\u0010\t\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\bR\u001d\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000b0\n8\u0006¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\f\u0010\u000eR\u001d\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u000b0\n8\u0006¢\u0006\f\n\u0004\b\u0010\u0010\r\u001a\u0004\b\u0010\u0010\u000eR\u001d\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00128\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0013\u0010\u0015R\u001d\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00128\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u0014\u001a\u0004\b\u0005\u0010\u0015R\u0011\u0010\u001b\u001a\u00020\u00188F¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u001a¨\u0006\u001c"}, d2 = {"Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;", "", "<init>", "()V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Z", "isAboveAndroidQ", "", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/List;", "()Ljava/util/List;", "storeImageKeys", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "storeVideoKeys", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "[Ljava/lang/String;", "()[Ljava/lang/String;", "typeKeys", "storeBucketKeys", "Landroid/net/Uri;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Landroid/net/Uri;", "allUri", "photo_manager_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public static final String[] f7467Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public static final String[] f7468Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public static final List<String> f7469Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public static final List<String> f7470Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @ChecksSdkIntAtLeast(api = 29)

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public static final boolean f7471Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public static final /* synthetic */ Companion f7472Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Companion();

        static {
            boolean z;
            int i = Build.VERSION.SDK_INT;
            if (i >= 29) {
                z = true;
            } else {
                z = false;
            }
            f7471Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
            List<String> mutableListOf = CollectionsKt.mutableListOf("_display_name", "_data", "_id", CampaignEx.JSON_KEY_TITLE, "bucket_id", "bucket_display_name", "width", "height", "orientation", "date_added", "date_modified", "mime_type", "datetaken");
            if (i >= 29) {
                mutableListOf.add("datetaken");
            }
            f7470Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = mutableListOf;
            List<String> mutableListOf2 = CollectionsKt.mutableListOf("_display_name", "_data", "_id", CampaignEx.JSON_KEY_TITLE, "bucket_id", "bucket_display_name", "date_added", "width", "height", "orientation", "date_modified", "mime_type", TypedValues.TransitionType.S_DURATION);
            if (i >= 29) {
                mutableListOf2.add("datetaken");
            }
            f7469Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = mutableListOf2;
            f7468Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new String[]{"media_type", "_display_name"};
            f7467Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = new String[]{"bucket_id", "bucket_display_name"};
        }

        public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return f7471Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final String[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return f7468Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final List<String> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return f7469Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final List<String> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return f7470Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final String[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return f7467Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final Uri Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return MediaStore.Files.getContentUri("external");
        }
    }

    @NotNull
    String Kkkkkkkkkkkkkkkkkkkkkkk(@NotNull Context context, long j, int i);

    @NotNull
    Void Kkkkkkkkkkkkkkkkkkkkkkkk(@NotNull String str) throws RuntimeException;

    @NotNull
    AssetEntity Kkkkkkkkkkkkkkkkkkkkkkkkk(@NotNull Context context, @NotNull String str, @NotNull String str2);

    @NotNull
    byte[] Kkkkkkkkkkkkkkkkkkkkkkkkkk(@NotNull Context context, @NotNull AssetEntity assetEntity, boolean z);

    @Nullable
    ExifInterface Www(@NotNull Context context, @NotNull String str);

    @NotNull
    Void Wwww(@NotNull Object obj) throws RuntimeException;

    @NotNull
    String Wwwww(@NotNull Context context, @NotNull String str, boolean z);

    int Wwwwww(int i);

    @NotNull
    String Wwwwwww(@NotNull Cursor cursor, @NotNull String str);

    @NotNull
    List<AssetPathEntity> Wwwwwwww(@NotNull Context context, int i, @NotNull FilterOption filterOption);

    @NotNull
    List<AssetEntity> Wwwwwwwww(@NotNull Context context, @NotNull String str, int i, int i2, int i3, @NotNull FilterOption filterOption);

    void Wwwwwwwwww(@NotNull Context context, @NotNull String str);

    long Wwwwwwwwwww(@NotNull Cursor cursor, @NotNull String str);

    void Wwwwwwwwwwww(@NotNull Context context);

    int Wwwwwwwwwwwww(@NotNull Context context, @NotNull FilterOption filterOption, int i, @NotNull String str);

    @NotNull
    List<String> Wwwwwwwwwwwwww(@NotNull Context context);

    @NotNull
    AssetEntity Wwwwwwwwwwwwwww(@NotNull Context context, @NotNull String str, @NotNull String str2, @NotNull String str3, @NotNull String str4, @Nullable Integer num);

    @NotNull
    Uri Wwwwwwwwwwwwwwww(long j, int i, boolean z);

    @NotNull
    Cursor Wwwwwwwwwwwwwwwww(@NotNull ContentResolver contentResolver, @NotNull Uri uri, @Nullable String[] strArr, @Nullable String str, @Nullable String[] strArr2, @Nullable String str2);

    @Nullable
    AssetPathEntity Wwwwwwwwwwwwwwwwww(@NotNull Context context, @NotNull String str, int i, @NotNull FilterOption filterOption);

    @NotNull
    Uri Wwwwwwwwwwwwwwwwwww();

    @NotNull
    List<AssetEntity> Wwwwwwwwwwwwwwwwwwww(@NotNull Context context, @NotNull FilterOption filterOption, int i, int i2, int i3);

    @NotNull
    AssetEntity Wwwwwwwwwwwwwwwwwwwww(@NotNull Context context, @NotNull String str, @NotNull String str2);

    @NotNull
    List<String> Wwwwwwwwwwwwwwwwwwwwww(@NotNull Context context, @NotNull List<String> list);

    @NotNull
    AssetEntity Wwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context, @NotNull String str, @NotNull String str2, @NotNull String str3, @NotNull String str4, @Nullable Integer num);

    int Wwwwwwwwwwwwwwwwwwwwwwww(@NotNull Cursor cursor, @NotNull String str);

    @Nullable
    AssetEntity Wwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Cursor cursor, @NotNull Context context, boolean z, boolean z2);

    @NotNull
    List<AssetPathEntity> Wwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context, int i, @NotNull FilterOption filterOption);

    @NotNull
    List<AssetEntity> Wwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context, @NotNull String str, int i, int i2, int i3, @NotNull FilterOption filterOption);

    @NotNull
    AssetEntity Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context, @NotNull byte[] bArr, @NotNull String str, @NotNull String str2, @NotNull String str3, @NotNull String str4, @Nullable Integer num);

    boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context);

    @Nullable
    AssetEntity Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context, @NotNull String str, boolean z);

    @Nullable
    Long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context, @NotNull String str);

    boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context, @NotNull String str);

    void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context, @NotNull AssetPathEntity assetPathEntity);

    int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context, @NotNull FilterOption filterOption, int i);

    @NotNull
    String[] keys();

    /* compiled from: Proguard */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nIDBUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IDBUtils.kt\ncom/fluttercandies/photo_manager/core/utils/IDBUtils$DefaultImpls\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,786:1\n1#2:787\n37#3:788\n36#3,3:789\n37#3:792\n36#3,3:793\n37#3:796\n36#3,3:797\n37#3:800\n36#3,3:801\n*S KotlinDebug\n*F\n+ 1 IDBUtils.kt\ncom/fluttercandies/photo_manager/core/utils/IDBUtils$DefaultImpls\n*L\n599#1:788\n599#1:789,3\n659#1:792\n659#1:793,3\n688#1:796\n688#1:797,3\n705#1:800\n705#1:801,3\n*E\n"})
    /* loaded from: classes4.dex */
    public static final class DefaultImpls {
        public static /* synthetic */ AssetEntity Kkkkkkkkkkkkkkkkkkk(IDBUtils iDBUtils, Cursor cursor, Context context, boolean z, boolean z2, int i, Object obj) {
            if (obj == null) {
                if ((i & 2) != 0) {
                    z = true;
                }
                if ((i & 4) != 0) {
                    z2 = true;
                }
                return iDBUtils.Wwwwwwwwwwwwwwwwwwwwwwwww(cursor, context, z, z2);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: toAssetEntity");
        }

        @Nullable
        public static AssetEntity Kkkkkkkkkkkkkkkkkkkk(@NotNull IDBUtils iDBUtils, @NotNull Cursor cursor, @NotNull Context context, boolean z, boolean z2) {
            long Wwwwwwwwwww2;
            long j;
            String str;
            long Wwwwwwwwwww3 = iDBUtils.Wwwwwwwwwww(cursor, "_id");
            String Wwwwwww2 = iDBUtils.Wwwwwww(cursor, "_data");
            if (z && !StringsKt.isBlank(Wwwwwww2) && !new File(Wwwwwww2).exists()) {
                if (!z2) {
                    return null;
                }
                iDBUtils.Kkkkkkkkkkkkkkkkkkkkkkkk("Asset (" + Wwwwwwwwwww3 + ") does not exists at its path (" + Wwwwwww2 + ").");
                throw new KotlinNothingValueException();
            }
            Companion companion = IDBUtils.Companion;
            long j2 = 0;
            if (companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                Wwwwwwwwwww2 = iDBUtils.Wwwwwwwwwww(cursor, "datetaken") / 1000;
                if (Wwwwwwwwwww2 == 0) {
                    Wwwwwwwwwww2 = iDBUtils.Wwwwwwwwwww(cursor, "date_added");
                }
            } else {
                Wwwwwwwwwww2 = iDBUtils.Wwwwwwwwwww(cursor, "date_added");
            }
            int Wwwwwwwwwwwwwwwwwwwwwwww2 = iDBUtils.Wwwwwwwwwwwwwwwwwwwwwwww(cursor, "media_type");
            String Wwwwwww3 = iDBUtils.Wwwwwww(cursor, "mime_type");
            if (Wwwwwwwwwwwwwwwwwwwwwwww2 != 1) {
                j2 = iDBUtils.Wwwwwwwwwww(cursor, TypedValues.TransitionType.S_DURATION);
            }
            int Wwwwwwwwwwwwwwwwwwwwwwww3 = iDBUtils.Wwwwwwwwwwwwwwwwwwwwwwww(cursor, "width");
            int Wwwwwwwwwwwwwwwwwwwwwwww4 = iDBUtils.Wwwwwwwwwwwwwwwwwwwwwwww(cursor, "height");
            String Wwwwwww4 = iDBUtils.Wwwwwww(cursor, "_display_name");
            long Wwwwwwwwwww4 = iDBUtils.Wwwwwwwwwww(cursor, "date_modified");
            int Wwwwwwwwwwwwwwwwwwwwwwww5 = iDBUtils.Wwwwwwwwwwwwwwwwwwwwwwww(cursor, "orientation");
            if (companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                j = Wwwwwwwwwww4;
                str = iDBUtils.Wwwwwww(cursor, "relative_path");
            } else {
                j = Wwwwwwwwwww4;
                str = null;
            }
            if (Wwwwwwwwwwwwwwwwwwwwwwww3 == 0 || Wwwwwwwwwwwwwwwwwwwwwwww4 == 0) {
                int i = 0;
                if (Wwwwwwwwwwwwwwwwwwwwwwww2 == 1) {
                    try {
                        if (!StringsKt.contains$default((CharSequence) Wwwwwww3, (CharSequence) "svg", false, 2, (Object) null)) {
                            InputStream openInputStream = context.getContentResolver().openInputStream(Wwwwwwwwwww(iDBUtils, Wwwwwwwwwww3, iDBUtils.Wwwwww(Wwwwwwwwwwwwwwwwwwwwwwww2), false, 4, null));
                            if (openInputStream != null) {
                                ExifInterface exifInterface = new ExifInterface(openInputStream);
                                String attribute = exifInterface.getAttribute(ExifInterface.TAG_IMAGE_WIDTH);
                                if (attribute != null) {
                                    Wwwwwwwwwwwwwwwwwwwwwwww3 = Integer.parseInt(attribute);
                                }
                                String attribute2 = exifInterface.getAttribute(ExifInterface.TAG_IMAGE_LENGTH);
                                if (attribute2 != null) {
                                    Wwwwwwwwwwwwwwwwwwwwwwww4 = Integer.parseInt(attribute2);
                                }
                                CloseableKt.closeFinally(openInputStream, null);
                            }
                        }
                    } catch (Throwable th) {
                        LogUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th);
                    }
                }
                if (Wwwwwwwwwwwwwwwwwwwwwwww2 == 3) {
                    MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
                    mediaMetadataRetriever.setDataSource(Wwwwwww2);
                    String extractMetadata = mediaMetadataRetriever.extractMetadata(18);
                    if (extractMetadata != null) {
                        Wwwwwwwwwwwwwwwwwwwwwwww3 = Integer.parseInt(extractMetadata);
                    } else {
                        Wwwwwwwwwwwwwwwwwwwwwwww3 = 0;
                    }
                    String extractMetadata2 = mediaMetadataRetriever.extractMetadata(19);
                    if (extractMetadata2 != null) {
                        i = Integer.parseInt(extractMetadata2);
                    }
                    Wwwwwwwwwwwwwwwwwwwwwwww4 = i;
                    String extractMetadata3 = mediaMetadataRetriever.extractMetadata(24);
                    if (extractMetadata3 != null) {
                        Wwwwwwwwwwwwwwwwwwwwwwww5 = Integer.parseInt(extractMetadata3);
                    }
                    if (companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                        androidx.core.provider.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(mediaMetadataRetriever);
                    } else {
                        mediaMetadataRetriever.release();
                    }
                }
            }
            return new AssetEntity(Wwwwwwwwwww3, Wwwwwww2, j2, Wwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwww3, Wwwwwwwwwwwwwwwwwwwwwwww4, iDBUtils.Wwwwww(Wwwwwwwwwwwwwwwwwwwwwwww2), Wwwwwww4, j, Wwwwwwwwwwwwwwwwwwwwwwww5, null, null, str, Wwwwwww3, 3072, null);
        }

        @NotNull
        public static Void Kkkkkkkkkkkkkkkkkkkkk(@NotNull IDBUtils iDBUtils, @NotNull String str) throws RuntimeException {
            throw new RuntimeException(str);
        }

        @NotNull
        public static Void Kkkkkkkkkkkkkkkkkkkkkk(@NotNull IDBUtils iDBUtils, @NotNull Object obj) throws RuntimeException {
            iDBUtils.Kkkkkkkkkkkkkkkkkkkkkkkk("Failed to find asset " + obj);
            throw new KotlinNothingValueException();
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [T, java.io.FileInputStream] */
        public static void Kkkkkkkkkkkkkkkkkkkkkkk(Ref.ObjectRef<FileInputStream> objectRef, File file) {
            objectRef.element = new FileInputStream(file);
        }

        /* JADX WARN: Type inference failed for: r4v0, types: [T, java.io.FileInputStream] */
        @NotNull
        public static AssetEntity Kkkkkkkkkkkkkkkkkkkkkkkk(@NotNull IDBUtils iDBUtils, @NotNull Context context, @NotNull String str, @NotNull String str2, @NotNull String str3, @NotNull String str4, @Nullable Integer num) {
            int i;
            double[] latLong;
            CommonExtKt.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
            File file = new File(str);
            Ref.ObjectRef objectRef = new Ref.ObjectRef();
            objectRef.element = new FileInputStream(file);
            String guessContentTypeFromName = URLConnection.guessContentTypeFromName(str2);
            if (guessContentTypeFromName == null && (guessContentTypeFromName = URLConnection.guessContentTypeFromName(str)) == null) {
                T t = objectRef.element;
                FileInputStream fileInputStream = (FileInputStream) t;
                guessContentTypeFromName = URLConnection.guessContentTypeFromStream((InputStream) t);
                Kkkkkkkkkkkkkkkkkkkkkkk(objectRef, file);
                if (guessContentTypeFromName == null) {
                    guessContentTypeFromName = "video/*";
                }
            }
            VideoUtils.VideoInfo Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = VideoUtils.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
            ExifInterface exifInterface = new ExifInterface((InputStream) objectRef.element);
            boolean z = false;
            if (num != null) {
                i = num.intValue();
            } else if (IDBUtils.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                i = exifInterface.getRotationDegrees();
            } else {
                i = 0;
            }
            Integer valueOf = Integer.valueOf(i);
            Companion companion = IDBUtils.Companion;
            if (companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                latLong = null;
            } else {
                latLong = exifInterface.getLatLong();
            }
            Pair pair = new Pair(valueOf, latLong);
            int intValue = ((Number) pair.component1()).intValue();
            double[] dArr = (double[]) pair.component2();
            Kkkkkkkkkkkkkkkkkkkkkkk(objectRef, file);
            if (!companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                z = StringsKt.startsWith$default(file.getAbsolutePath(), Environment.getExternalStorageDirectory().getPath(), false, 2, (Object) null);
            }
            boolean z2 = z;
            long j = 1000;
            long currentTimeMillis = System.currentTimeMillis() / j;
            ContentValues contentValues = new ContentValues();
            contentValues.put("media_type", (Integer) 3);
            contentValues.put("description", str3);
            contentValues.put(CampaignEx.JSON_KEY_TITLE, str2);
            contentValues.put("_display_name", str2);
            contentValues.put("mime_type", guessContentTypeFromName);
            contentValues.put("date_added", Long.valueOf(currentTimeMillis));
            contentValues.put("date_modified", Long.valueOf(currentTimeMillis));
            contentValues.put(TypedValues.TransitionType.S_DURATION, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            contentValues.put("width", Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            contentValues.put("height", Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            if (companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                contentValues.put("datetaken", Long.valueOf(currentTimeMillis * j));
                contentValues.put("orientation", Integer.valueOf(intValue));
                if (!StringsKt.isBlank(str4)) {
                    contentValues.put("relative_path", str4);
                }
            } else {
                File file2 = new File(Environment.getExternalStorageDirectory().getPath(), Environment.DIRECTORY_MOVIES);
                CommonExtKt.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new File(file2, str2).getPath());
                contentValues.put("_data", new File(file2, String.valueOf(System.currentTimeMillis()) + "." + FilesKt.getExtension(file)).getAbsolutePath());
            }
            if (dArr != null) {
                contentValues.put("latitude", Double.valueOf(ArraysKt.first(dArr)));
                contentValues.put("longitude", Double.valueOf(ArraysKt.last(dArr)));
            }
            if (z2) {
                contentValues.put("_data", str);
            }
            return Wwwwwwwww(iDBUtils, context, (InputStream) objectRef.element, MediaStore.Video.Media.EXTERNAL_CONTENT_URI, contentValues, z2);
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [T, java.io.FileInputStream] */
        public static void Kkkkkkkkkkkkkkkkkkkkkkkkk(Ref.ObjectRef<FileInputStream> objectRef, File file) {
            objectRef.element = new FileInputStream(file);
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [java.io.ByteArrayInputStream, T] */
        public static void Kkkkkkkkkkkkkkkkkkkkkkkkkk(Ref.ObjectRef<ByteArrayInputStream> objectRef, byte[] bArr) {
            objectRef.element = new ByteArrayInputStream(bArr);
        }

        /* JADX WARN: Type inference failed for: r3v0, types: [java.io.ByteArrayInputStream, T] */
        @NotNull
        public static AssetEntity Www(@NotNull IDBUtils iDBUtils, @NotNull Context context, @NotNull byte[] bArr, @NotNull String str, @NotNull String str2, @NotNull String str3, @NotNull String str4, @Nullable Integer num) {
            double[] latLong;
            Ref.ObjectRef objectRef = new Ref.ObjectRef();
            objectRef.element = new ByteArrayInputStream(bArr);
            String guessContentTypeFromName = URLConnection.guessContentTypeFromName(str);
            if (guessContentTypeFromName == null) {
                T t = objectRef.element;
                ByteArrayInputStream byteArrayInputStream = (ByteArrayInputStream) t;
                guessContentTypeFromName = URLConnection.guessContentTypeFromStream((InputStream) t);
                Kkkkkkkkkkkkkkkkkkkkkkkkkk(objectRef, bArr);
                if (guessContentTypeFromName == null) {
                    guessContentTypeFromName = "image/*";
                }
            }
            ExifInterface exifInterface = new ExifInterface((InputStream) objectRef.element);
            int i = 0;
            Pair pair = new Pair(Integer.valueOf(exifInterface.getAttributeInt(ExifInterface.TAG_IMAGE_WIDTH, 0)), Integer.valueOf(exifInterface.getAttributeInt(ExifInterface.TAG_IMAGE_LENGTH, 0)));
            int intValue = ((Number) pair.component1()).intValue();
            int intValue2 = ((Number) pair.component2()).intValue();
            if (num != null) {
                i = num.intValue();
            } else if (IDBUtils.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                i = exifInterface.getRotationDegrees();
            }
            Integer valueOf = Integer.valueOf(i);
            Companion companion = IDBUtils.Companion;
            if (companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                latLong = null;
            } else {
                latLong = exifInterface.getLatLong();
            }
            Pair pair2 = new Pair(valueOf, latLong);
            int intValue3 = ((Number) pair2.component1()).intValue();
            double[] dArr = (double[]) pair2.component2();
            Kkkkkkkkkkkkkkkkkkkkkkkkkk(objectRef, bArr);
            long j = 1000;
            long currentTimeMillis = System.currentTimeMillis() / j;
            ContentValues contentValues = new ContentValues();
            contentValues.put("media_type", (Integer) 1);
            contentValues.put("description", str3);
            contentValues.put("_display_name", str2);
            contentValues.put("mime_type", guessContentTypeFromName);
            contentValues.put(CampaignEx.JSON_KEY_TITLE, str2);
            contentValues.put("date_added", Long.valueOf(currentTimeMillis));
            contentValues.put("date_modified", Long.valueOf(currentTimeMillis));
            contentValues.put("width", Integer.valueOf(intValue));
            contentValues.put("height", Integer.valueOf(intValue2));
            if (companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                contentValues.put("datetaken", Long.valueOf(currentTimeMillis * j));
                contentValues.put("orientation", Integer.valueOf(intValue3));
                if (!StringsKt.isBlank(str4)) {
                    contentValues.put("relative_path", str4);
                }
            }
            if (dArr != null) {
                contentValues.put("latitude", Double.valueOf(ArraysKt.first(dArr)));
                contentValues.put("longitude", Double.valueOf(ArraysKt.last(dArr)));
            }
            return Wwwwwwww(iDBUtils, context, (InputStream) objectRef.element, MediaStore.Images.Media.EXTERNAL_CONTENT_URI, contentValues, false, 16, null);
        }

        /* JADX WARN: Type inference failed for: r4v0, types: [T, java.io.FileInputStream] */
        @NotNull
        public static AssetEntity Wwww(@NotNull IDBUtils iDBUtils, @NotNull Context context, @NotNull String str, @NotNull String str2, @NotNull String str3, @NotNull String str4, @Nullable Integer num) {
            int i;
            double[] latLong;
            CommonExtKt.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
            File file = new File(str);
            Ref.ObjectRef objectRef = new Ref.ObjectRef();
            objectRef.element = new FileInputStream(file);
            String guessContentTypeFromName = URLConnection.guessContentTypeFromName(str2);
            if (guessContentTypeFromName == null && (guessContentTypeFromName = URLConnection.guessContentTypeFromName(str)) == null) {
                T t = objectRef.element;
                FileInputStream fileInputStream = (FileInputStream) t;
                guessContentTypeFromName = URLConnection.guessContentTypeFromStream((InputStream) t);
                Kkkkkkkkkkkkkkkkkkkkkkkkk(objectRef, file);
                if (guessContentTypeFromName == null) {
                    guessContentTypeFromName = "image/*";
                }
            }
            ExifInterface exifInterface = new ExifInterface((InputStream) objectRef.element);
            boolean z = false;
            Pair pair = new Pair(Integer.valueOf(exifInterface.getAttributeInt(ExifInterface.TAG_IMAGE_WIDTH, 0)), Integer.valueOf(exifInterface.getAttributeInt(ExifInterface.TAG_IMAGE_LENGTH, 0)));
            int intValue = ((Number) pair.component1()).intValue();
            int intValue2 = ((Number) pair.component2()).intValue();
            if (num != null) {
                i = num.intValue();
            } else if (IDBUtils.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                i = exifInterface.getRotationDegrees();
            } else {
                i = 0;
            }
            Integer valueOf = Integer.valueOf(i);
            Companion companion = IDBUtils.Companion;
            if (companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                latLong = null;
            } else {
                latLong = exifInterface.getLatLong();
            }
            Pair pair2 = new Pair(valueOf, latLong);
            int intValue3 = ((Number) pair2.component1()).intValue();
            double[] dArr = (double[]) pair2.component2();
            Kkkkkkkkkkkkkkkkkkkkkkkkk(objectRef, file);
            if (!companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                z = StringsKt.startsWith$default(file.getAbsolutePath(), Environment.getExternalStorageDirectory().getPath(), false, 2, (Object) null);
            }
            boolean z2 = z;
            long j = 1000;
            long currentTimeMillis = System.currentTimeMillis() / j;
            ContentValues contentValues = new ContentValues();
            contentValues.put("media_type", (Integer) 1);
            contentValues.put("description", str3);
            contentValues.put("_display_name", str2);
            contentValues.put("mime_type", guessContentTypeFromName);
            contentValues.put(CampaignEx.JSON_KEY_TITLE, str2);
            contentValues.put("date_added", Long.valueOf(currentTimeMillis));
            contentValues.put("date_modified", Long.valueOf(currentTimeMillis));
            contentValues.put("width", Integer.valueOf(intValue));
            contentValues.put("height", Integer.valueOf(intValue2));
            if (companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                contentValues.put("datetaken", Long.valueOf(currentTimeMillis * j));
                contentValues.put("orientation", Integer.valueOf(intValue3));
                if (!StringsKt.isBlank(str4)) {
                    contentValues.put("relative_path", str4);
                }
            }
            if (dArr != null) {
                contentValues.put("latitude", Double.valueOf(ArraysKt.first(dArr)));
                contentValues.put("longitude", Double.valueOf(ArraysKt.last(dArr)));
            }
            if (z2) {
                contentValues.put("_data", str);
            }
            return Wwwwwwwww(iDBUtils, context, (InputStream) objectRef.element, MediaStore.Images.Media.EXTERNAL_CONTENT_URI, contentValues, z2);
        }

        public static void Wwwww(@NotNull IDBUtils iDBUtils, @NotNull Context context, @NotNull String str) {
            if (LogUtils.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                String padStart = StringsKt.padStart("", 40, '-');
                LogUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("log error row " + str + " start " + padStart);
                Cursor Wwwwwwwwwwwwwwwww2 = iDBUtils.Wwwwwwwwwwwwwwwww(context.getContentResolver(), iDBUtils.Wwwwwwwwwwwwwwwwwww(), null, "_id = ?", new String[]{str}, null);
                try {
                    Cursor cursor = Wwwwwwwwwwwwwwwww2;
                    String[] columnNames = cursor.getColumnNames();
                    if (cursor.moveToNext()) {
                        int length = columnNames.length;
                        for (int i = 0; i < length; i++) {
                            String str2 = columnNames[i];
                            String string = cursor.getString(i);
                            LogUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str2 + " : " + string);
                        }
                    }
                    Unit unit = Unit.INSTANCE;
                    CloseableKt.closeFinally(Wwwwwwwwwwwwwwwww2, null);
                    LogUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("log error row " + str + " end " + padStart);
                } finally {
                }
            }
        }

        public static void Wwwwww(Uri uri, String[] strArr, String str, String[] strArr2, String str2, Function1<? super String, Unit> function1, Cursor cursor) {
            String str3;
            String str4;
            String str5;
            String replace$default;
            Object[] objArr;
            if (LogUtils.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                StringBuilder sb = new StringBuilder();
                sb.append("uri: " + uri);
                sb.append('\n');
                Integer num = null;
                if (strArr != null) {
                    str3 = ArraysKt.joinToString$default(strArr, ", ", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) null, 62, (Object) null);
                } else {
                    str3 = null;
                }
                sb.append("projection: " + str3);
                sb.append('\n');
                sb.append("selection: " + str);
                sb.append('\n');
                if (strArr2 != null) {
                    str4 = ArraysKt.joinToString$default(strArr2, ", ", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) null, 62, (Object) null);
                } else {
                    str4 = null;
                }
                sb.append("selectionArgs: " + str4);
                sb.append('\n');
                sb.append("sortOrder: " + str2);
                sb.append('\n');
                if (str != null && (replace$default = StringsKt.replace$default(str, "?", "%s", false, 4, (Object) null)) != null) {
                    if (strArr2 == null) {
                        objArr = new Object[0];
                    } else {
                        objArr = strArr2;
                    }
                    Object[] copyOf = Arrays.copyOf(objArr, objArr.length);
                    str5 = String.format(replace$default, Arrays.copyOf(copyOf, copyOf.length));
                } else {
                    str5 = null;
                }
                sb.append("sql: " + str5);
                sb.append('\n');
                if (cursor != null) {
                    num = Integer.valueOf(cursor.getCount());
                }
                sb.append("cursor count: " + num);
                sb.append('\n');
                function1.invoke(sb.toString());
            }
        }

        @NotNull
        public static Cursor Wwwwwww(@NotNull IDBUtils iDBUtils, @NotNull ContentResolver contentResolver, @NotNull Uri uri, @Nullable String[] strArr, @Nullable String str, @Nullable String[] strArr2, @Nullable String str2) {
            String[] strArr3;
            String[] strArr4;
            try {
                Cursor query = contentResolver.query(uri, strArr, str, strArr2, str2);
                strArr3 = strArr;
                strArr4 = strArr2;
                try {
                    try {
                        Wwwwww(uri, strArr3, str, strArr4, str2, new IDBUtils$logQuery$1(LogUtils.INSTANCE), query);
                        uri = uri;
                        strArr3 = strArr3;
                        str = str;
                        strArr4 = strArr4;
                        str2 = str2;
                        if (query != null) {
                            return query;
                        }
                        iDBUtils.Kkkkkkkkkkkkkkkkkkkkkkkk("Failed to obtain the cursor.");
                        throw new KotlinNothingValueException();
                    } catch (Exception e) {
                        e = e;
                        uri = uri;
                        strArr3 = strArr3;
                        str = str;
                        strArr4 = strArr4;
                        str2 = str2;
                        Uri uri2 = uri;
                        String str3 = str;
                        Wwwwww(uri2, strArr3, str3, strArr4, str2, new IDBUtils$logQuery$2(LogUtils.INSTANCE), null);
                        LogUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("happen query error", e);
                        throw e;
                    }
                } catch (Exception e2) {
                    e = e2;
                }
            } catch (Exception e3) {
                e = e3;
                strArr3 = strArr;
                strArr4 = strArr2;
            }
        }

        public static /* synthetic */ AssetEntity Wwwwwwww(IDBUtils iDBUtils, Context context, InputStream inputStream, Uri uri, ContentValues contentValues, boolean z, int i, Object obj) {
            if (obj == null) {
                if ((i & 16) != 0) {
                    z = false;
                }
                return Wwwwwwwww(iDBUtils, context, inputStream, uri, contentValues, z);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: insertUri");
        }

        public static AssetEntity Wwwwwwwww(IDBUtils iDBUtils, Context context, InputStream inputStream, Uri uri, ContentValues contentValues, boolean z) {
            ContentResolver contentResolver = context.getContentResolver();
            Uri insert = contentResolver.insert(uri, contentValues);
            if (insert != null) {
                long parseId = ContentUris.parseId(insert);
                if (!z) {
                    OutputStream openOutputStream = contentResolver.openOutputStream(insert);
                    if (openOutputStream != null) {
                        try {
                            ByteStreamsKt.copyTo$default(inputStream, openOutputStream, 0, 2, null);
                            CloseableKt.closeFinally(inputStream, null);
                            CloseableKt.closeFinally(openOutputStream, null);
                        } finally {
                        }
                    } else {
                        iDBUtils.Kkkkkkkkkkkkkkkkkkkkkkkk("Cannot open the output stream for " + insert + ".");
                        throw new KotlinNothingValueException();
                    }
                }
                contentResolver.notifyChange(insert, null);
                AssetEntity Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwww(iDBUtils, context, String.valueOf(parseId), false, 4, null);
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                    return Wwwwwwwwwwwwwwwwwwwwwwwwwww2;
                }
                iDBUtils.Wwww(Long.valueOf(parseId));
                throw new KotlinNothingValueException();
            }
            iDBUtils.Kkkkkkkkkkkkkkkkkkkkkkkk("Cannot insert new asset.");
            throw new KotlinNothingValueException();
        }

        public static void Wwwwwwwwww(@NotNull IDBUtils iDBUtils, @NotNull Context context, @NotNull AssetPathEntity assetPathEntity) {
            Long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = iDBUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, assetPathEntity.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                assetPathEntity.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Long.valueOf(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.longValue()));
            }
        }

        public static /* synthetic */ Uri Wwwwwwwwwww(IDBUtils iDBUtils, long j, int i, boolean z, int i2, Object obj) {
            if (obj == null) {
                if ((i2 & 4) != 0) {
                    z = false;
                }
                return iDBUtils.Wwwwwwwwwwwwwwww(j, i, z);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getUri");
        }

        @NotNull
        public static Uri Wwwwwwwwwwww(@NotNull IDBUtils iDBUtils, long j, int i, boolean z) {
            Uri withAppendedId;
            Uri requireOriginal;
            if (i != 1) {
                if (i != 2) {
                    if (i == 3) {
                        withAppendedId = ContentUris.withAppendedId(MediaStore.Audio.Media.EXTERNAL_CONTENT_URI, j);
                    } else {
                        iDBUtils.Kkkkkkkkkkkkkkkkkkkkkkkk("Unexpected asset type " + i);
                        throw new KotlinNothingValueException();
                    }
                } else {
                    withAppendedId = ContentUris.withAppendedId(MediaStore.Video.Media.EXTERNAL_CONTENT_URI, j);
                }
            } else {
                withAppendedId = ContentUris.withAppendedId(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, j);
            }
            if (z) {
                requireOriginal = MediaStore.setRequireOriginal(withAppendedId);
                return requireOriginal;
            }
            return withAppendedId;
        }

        public static int Wwwwwwwwwwwww(@NotNull IDBUtils iDBUtils, int i) {
            int i2 = 1;
            if (i != 1) {
                i2 = 3;
                if (i != 2) {
                    if (i == 3) {
                        return 2;
                    }
                    return 0;
                }
            }
            return i2;
        }

        @Nullable
        public static String Wwwwwwwwwwwwww(@NotNull IDBUtils iDBUtils, @NotNull Cursor cursor, @NotNull String str) {
            return cursor.getString(cursor.getColumnIndex(str));
        }

        @NotNull
        public static String Wwwwwwwwwwwwwww(@NotNull IDBUtils iDBUtils, @NotNull Cursor cursor, @NotNull String str) {
            String string = cursor.getString(cursor.getColumnIndex(str));
            if (string == null) {
                return "";
            }
            return string;
        }

        @Nullable
        public static String Wwwwwwwwwwwwwwww(@NotNull IDBUtils iDBUtils, int i, int i2, @NotNull FilterOption filterOption) {
            String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = filterOption.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 + " LIMIT " + i2 + " OFFSET " + i;
        }

        @Nullable
        public static Long Wwwwwwwwwwwwwwwww(@NotNull IDBUtils iDBUtils, @NotNull Context context, @NotNull String str) {
            IDBUtils iDBUtils2;
            Cursor Wwwwwwwwwwwwwwwww2;
            String[] strArr = {"date_modified"};
            if (Intrinsics.areEqual(str, "isAll")) {
                iDBUtils2 = iDBUtils;
                Wwwwwwwwwwwwwwwww2 = iDBUtils2.Wwwwwwwwwwwwwwwww(context.getContentResolver(), iDBUtils.Wwwwwwwwwwwwwwwwwww(), strArr, null, null, "date_modified desc");
            } else {
                iDBUtils2 = iDBUtils;
                Wwwwwwwwwwwwwwwww2 = iDBUtils2.Wwwwwwwwwwwwwwwww(context.getContentResolver(), iDBUtils2.Wwwwwwwwwwwwwwwwwww(), strArr, "bucket_id = ?", new String[]{str}, "date_modified desc");
            }
            Cursor cursor = Wwwwwwwwwwwwwwwww2;
            try {
                Cursor cursor2 = cursor;
                if (cursor2.moveToNext()) {
                    Long valueOf = Long.valueOf(iDBUtils2.Wwwwwwwwwww(cursor2, "date_modified"));
                    CloseableKt.closeFinally(cursor, null);
                    return valueOf;
                }
                Unit unit = Unit.INSTANCE;
                CloseableKt.closeFinally(cursor, null);
                return null;
            } finally {
            }
        }

        @NotNull
        public static String Wwwwwwwwwwwwwwwwww(@NotNull IDBUtils iDBUtils, @NotNull Context context, long j, int i) {
            return iDBUtils.Wwwwwwwwwwwwwwww(j, i, false).toString();
        }

        public static int Wwwwwwwwwwwwwwwwwww(@NotNull IDBUtils iDBUtils, int i) {
            int i2 = 1;
            if (i != 1) {
                i2 = 3;
                if (i != 2) {
                    if (i == 3) {
                        return 2;
                    }
                    return 0;
                }
            }
            return i2;
        }

        public static long Wwwwwwwwwwwwwwwwwwww(@NotNull IDBUtils iDBUtils, @NotNull Cursor cursor, @NotNull String str) {
            return cursor.getLong(cursor.getColumnIndex(str));
        }

        public static int Wwwwwwwwwwwwwwwwwwwww(@NotNull IDBUtils iDBUtils, @NotNull Cursor cursor, @NotNull String str) {
            return cursor.getInt(cursor.getColumnIndex(str));
        }

        @NotNull
        public static String Wwwwwwwwwwwwwwwwwwwwww(@NotNull IDBUtils iDBUtils) {
            return "_id = ?";
        }

        @NotNull
        public static List<String> Wwwwwwwwwwwwwwwwwwwwwww(@NotNull IDBUtils iDBUtils, @NotNull Context context) {
            Cursor Wwwwwwwwwwwwwwwww2 = iDBUtils.Wwwwwwwwwwwwwwwww(context.getContentResolver(), iDBUtils.Wwwwwwwwwwwwwwwwwww(), null, null, null, null);
            try {
                List<String> list = ArraysKt.toList(Wwwwwwwwwwwwwwwww2.getColumnNames());
                CloseableKt.closeFinally(Wwwwwwwwwwwwwwwww2, null);
                return list;
            } finally {
            }
        }

        public static CharSequence Wwwwwwwwwwwwwwwwwwwwwwww(String str) {
            return "?";
        }

        @NotNull
        public static List<String> Wwwwwwwwwwwwwwwwwwwwwwwww(@NotNull IDBUtils iDBUtils, @NotNull Context context, @NotNull List<String> list) {
            List<String> list2 = list;
            if (list2.size() > 500) {
                ArrayList arrayList = new ArrayList();
                int size = list2.size();
                int i = size / 500;
                if (size % 500 != 0) {
                    i++;
                }
                for (int i2 = 0; i2 < i; i2++) {
                    arrayList.addAll(iDBUtils.Wwwwwwwwwwwwwwwwwwwwww(context, list.subList(i2 * 500, i2 == i - 1 ? list2.size() : ((i2 + 1) * 500) - 1)));
                }
                return arrayList;
            }
            Cursor Wwwwwwwwwwwwwwwww2 = iDBUtils.Wwwwwwwwwwwwwwwww(context.getContentResolver(), iDBUtils.Wwwwwwwwwwwwwwwwwww(), new String[]{"_id", "media_type", "_data"}, "_id in (" + CollectionsKt.joinToString$default(list, ",", null, null, 0, null, new Function1() { // from class: com.fluttercandies.photo_manager.core.utils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    CharSequence Wwwwwwwwwwwwwwwwwwwwwwww2;
                    Wwwwwwwwwwwwwwwwwwwwwwww2 = IDBUtils.DefaultImpls.Wwwwwwwwwwwwwwwwwwwwwwww((String) obj);
                    return Wwwwwwwwwwwwwwwwwwwwwwww2;
                }
            }, 30, null) + ")", (String[]) list2.toArray(new String[0]), null);
            ArrayList arrayList2 = new ArrayList();
            HashMap hashMap = new HashMap();
            Cursor cursor = Wwwwwwwwwwwwwwwww2;
            try {
                Cursor cursor2 = cursor;
                while (cursor2.moveToNext()) {
                    hashMap.put(iDBUtils.Wwwwwww(cursor2, "_id"), iDBUtils.Wwwwwww(cursor2, "_data"));
                }
                Unit unit = Unit.INSTANCE;
                CloseableKt.closeFinally(cursor, null);
                for (String str : list) {
                    String str2 = (String) hashMap.get(str);
                    if (str2 != null) {
                        arrayList2.add(str2);
                    }
                }
                return arrayList2;
            } finally {
            }
        }

        @NotNull
        public static List<AssetEntity> Wwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull IDBUtils iDBUtils, @NotNull Context context, @NotNull FilterOption filterOption, int i, int i2, int i3) {
            ContentResolver contentResolver = context.getContentResolver();
            ArrayList<String> arrayList = new ArrayList<>();
            Cursor Wwwwwwwwwwwwwwwww2 = iDBUtils.Wwwwwwwwwwwwwwwww(contentResolver, iDBUtils.Wwwwwwwwwwwwwwwwwww(), iDBUtils.keys(), filterOption.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i3, arrayList, false), (String[]) arrayList.toArray(new String[0]), filterOption.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            try {
                Cursor cursor = Wwwwwwwwwwwwwwwww2;
                ArrayList arrayList2 = new ArrayList();
                cursor.moveToPosition(i - 1);
                while (cursor.moveToNext()) {
                    Context context2 = context;
                    AssetEntity Kkkkkkkkkkkkkkkkkkk2 = Kkkkkkkkkkkkkkkkkkk(iDBUtils, cursor, context2, false, false, 4, null);
                    if (Kkkkkkkkkkkkkkkkkkk2 != null) {
                        arrayList2.add(Kkkkkkkkkkkkkkkkkkk2);
                        if (arrayList2.size() == i2 - i) {
                            break;
                        }
                    }
                    context = context2;
                }
                CloseableKt.closeFinally(Wwwwwwwwwwwwwwwww2, null);
                return arrayList2;
            } finally {
            }
        }

        public static /* synthetic */ AssetEntity Wwwwwwwwwwwwwwwwwwwwwwwwwww(IDBUtils iDBUtils, Context context, String str, boolean z, int i, Object obj) {
            if (obj == null) {
                if ((i & 4) != 0) {
                    z = true;
                }
                return iDBUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, str, z);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getAssetEntity");
        }

        public static int Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull IDBUtils iDBUtils, @NotNull Context context, @NotNull FilterOption filterOption, int i, @NotNull String str) {
            ContentResolver contentResolver = context.getContentResolver();
            ArrayList<String> arrayList = new ArrayList<>();
            StringBuilder sb = new StringBuilder(filterOption.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i, arrayList, false));
            if (!Intrinsics.areEqual(str, "isAll")) {
                if (StringsKt.trim(sb).length() > 0) {
                    sb.append(" AND ");
                }
                sb.append("bucket_id = ?");
                arrayList.add(str);
            }
            Cursor Wwwwwwwwwwwwwwwww2 = iDBUtils.Wwwwwwwwwwwwwwwww(contentResolver, iDBUtils.Wwwwwwwwwwwwwwwwwww(), new String[]{"_id"}, sb.toString(), (String[]) arrayList.toArray(new String[0]), filterOption.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            try {
                int count = Wwwwwwwwwwwwwwwww2.getCount();
                CloseableKt.closeFinally(Wwwwwwwwwwwwwwwww2, null);
                return count;
            } finally {
            }
        }

        public static int Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull IDBUtils iDBUtils, @NotNull Context context, @NotNull FilterOption filterOption, int i) {
            ContentResolver contentResolver = context.getContentResolver();
            ArrayList<String> arrayList = new ArrayList<>();
            Cursor Wwwwwwwwwwwwwwwww2 = iDBUtils.Wwwwwwwwwwwwwwwww(contentResolver, iDBUtils.Wwwwwwwwwwwwwwwwwww(), new String[]{"_id"}, filterOption.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i, arrayList, false), (String[]) arrayList.toArray(new String[0]), filterOption.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            try {
                int count = Wwwwwwwwwwwwwwwww2.getCount();
                CloseableKt.closeFinally(Wwwwwwwwwwwwwwwww2, null);
                return count;
            } finally {
            }
        }

        @NotNull
        public static Uri Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull IDBUtils iDBUtils) {
            return IDBUtils.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }

        public static int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull IDBUtils iDBUtils, int i) {
            return MediaStoreUtils.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i);
        }

        public static boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull IDBUtils iDBUtils, @NotNull Context context, @NotNull String str) {
            Cursor Wwwwwwwwwwwwwwwww2 = iDBUtils.Wwwwwwwwwwwwwwwww(context.getContentResolver(), iDBUtils.Wwwwwwwwwwwwwwwwwww(), new String[]{"_id"}, "_id = ?", new String[]{str}, null);
            try {
                boolean z = true;
                if (Wwwwwwwwwwwwwwwww2.getCount() < 1) {
                    z = false;
                }
                CloseableKt.closeFinally(Wwwwwwwwwwwwwwwww2, null);
                return z;
            } finally {
            }
        }

        public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull IDBUtils iDBUtils, @NotNull Context context) {
        }
    }
}
