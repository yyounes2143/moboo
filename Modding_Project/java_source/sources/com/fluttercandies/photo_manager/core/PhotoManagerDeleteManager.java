package com.fluttercandies.photo_manager.core;

import android.app.Activity;
import android.app.PendingIntent;
import android.app.RecoverableSecurityException;
import android.app.RemoteAction;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.provider.MediaStore;
import androidx.annotation.RequiresApi;
import com.fluttercandies.photo_manager.core.utils.IDBUtils;
import com.fluttercandies.photo_manager.util.LogUtils;
import com.fluttercandies.photo_manager.util.ResultHandler;
import io.flutter.plugin.common.PluginRegistry;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000~\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010%\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001:\u0001HB\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\t\u001a\u00020\b2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\t\u0010\nJ)\u0010\u0011\u001a\u00020\u00102\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000b2\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u001b\u0010\u0016\u001a\u00020\b2\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013¢\u0006\u0004\b\u0016\u0010\u0017J'\u0010\u001c\u001a\u00020\b2\u000e\u0010\u0019\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00180\u00132\u0006\u0010\u001b\u001a\u00020\u001aH\u0007¢\u0006\u0004\b\u001c\u0010\u001dJ?\u0010 \u001a\u00020\b2&\u0010\u0019\u001a\"\u0012\u0004\u0012\u00020\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u00180\u001ej\u0010\u0012\u0004\u0012\u00020\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u0018`\u001f2\u0006\u0010\u001b\u001a\u00020\u001aH\u0007¢\u0006\u0004\b \u0010!J'\u0010\"\u001a\u00020\b2\u000e\u0010\u0019\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00180\u00132\u0006\u0010\u001b\u001a\u00020\u001aH\u0007¢\u0006\u0004\b\"\u0010\u001dJ\u0017\u0010#\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\u000bH\u0002¢\u0006\u0004\b#\u0010$J\u000f\u0010%\u001a\u00020\bH\u0003¢\u0006\u0004\b%\u0010&J\u000f\u0010'\u001a\u00020\bH\u0002¢\u0006\u0004\b'\u0010&R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b \u0010(\u001a\u0004\b)\u0010*R\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010,R\u0016\u0010.\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010-R\"\u00101\u001a\u0010\u0012\u0004\u0012\u00020\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u00180/8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u00100R\u001a\u00104\u001a\b\u0012\u0004\u0012\u00020\u0014028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u00103R\u001a\u00105\u001a\b\u0012\u0004\u0012\u00020\u0014028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b%\u00103R \u0010:\u001a\f\u0012\b\u0012\u000607R\u00020\u0000068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b8\u00109R\u001c\u0010=\u001a\b\u0018\u000107R\u00020\u00008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b;\u0010<R\u0016\u0010?\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b>\u0010-R\u0018\u0010B\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b@\u0010AR\u0018\u0010D\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bC\u0010AR\u0014\u0010G\u001a\u00020E8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b+\u0010F¨\u0006I"}, d2 = {"Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;", "Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;", "Landroid/content/Context;", "context", "Landroid/app/Activity;", "activity", "<init>", "(Landroid/content/Context;Landroid/app/Activity;)V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/app/Activity;)V", "", "requestCode", "resultCode", "Landroid/content/Intent;", "intent", "", "onActivityResult", "(IILandroid/content/Intent;)Z", "", "", "ids", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/util/List;)V", "Landroid/net/Uri;", "uris", "Lcom/fluttercandies/photo_manager/util/ResultHandler;", "resultHandler", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/util/List;Lcom/fluttercandies/photo_manager/util/ResultHandler;)V", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "Wwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/util/HashMap;Lcom/fluttercandies/photo_manager/util/ResultHandler;)V", "Wwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwww", "(I)V", "Wwwwwwwwwwwwwwwwwwww", "()V", "Wwwwwwwwwwwwwwwwwwwww", "Landroid/content/Context;", "getContext", "()Landroid/content/Context;", "Wwwwwwwwwwwwwwwwwwwwwwww", "Landroid/app/Activity;", "I", "androidQDeleteRequestCode", "", "Ljava/util/Map;", "androidQUriMap", "", "Ljava/util/List;", "androidQSuccessIds", "androidQRemovedIds", "Ljava/util/LinkedList;", "Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager$AndroidQDeleteTask;", "Wwwwwwwwwwwwwwwwwww", "Ljava/util/LinkedList;", "waitPermissionQueue", "Wwwwwwwwwwwwwwwwww", "Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager$AndroidQDeleteTask;", "currentTask", "Wwwwwwwwwwwwwwwww", "androidRDeleteRequestCode", "Wwwwwwwwwwwwwwww", "Lcom/fluttercandies/photo_manager/util/ResultHandler;", "androidRHandler", "Wwwwwwwwwwwwwww", "androidQHandler", "Landroid/content/ContentResolver;", "()Landroid/content/ContentResolver;", "cr", "AndroidQDeleteTask", "photo_manager_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nPhotoManagerDeleteManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PhotoManagerDeleteManager.kt\ncom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,207:1\n37#2:208\n36#2,3:209\n1617#3,9:212\n1869#3:221\n1870#3:223\n1626#3:224\n1617#3,9:225\n1869#3:234\n1870#3:236\n1626#3:237\n1#4:222\n1#4:235\n*S KotlinDebug\n*F\n+ 1 PhotoManagerDeleteManager.kt\ncom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager\n*L\n97#1:208\n97#1:209,3\n112#1:212,9\n112#1:221\n112#1:223\n112#1:224\n196#1:225,9\n196#1:234\n196#1:236\n196#1:237\n112#1:222\n196#1:235\n*E\n"})
/* loaded from: classes4.dex */
public final class PhotoManagerDeleteManager implements PluginRegistry.ActivityResultListener {
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwww  reason: collision with root package name */
    public ResultHandler f7359Wwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwww  reason: collision with root package name */
    public ResultHandler f7360Wwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public AndroidQDeleteTask f7362Wwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Activity f7368Wwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Context f7369Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f7367Wwwwwwwwwwwwwwwwwwwwwww = 40070;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Map<String, Uri> f7366Wwwwwwwwwwwwwwwwwwwwww = new LinkedHashMap();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final List<String> f7365Wwwwwwwwwwwwwwwwwwwww = new ArrayList();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final List<String> f7364Wwwwwwwwwwwwwwwwwwww = new ArrayList();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public LinkedList<AndroidQDeleteTask> f7363Wwwwwwwwwwwwwwwwwww = new LinkedList<>();

    /* renamed from: Wwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f7361Wwwwwwwwwwwwwwwww = 40069;

    /* compiled from: Proguard */
    @RequiresApi(29)
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\f\b\u0087\u0004\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\r\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\u000b\u0010\fJ\u0015\u0010\u000f\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000f\u0010\u0010R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u000b\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018¨\u0006\u0019"}, d2 = {"Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager$AndroidQDeleteTask;", "", "", "id", "Landroid/net/Uri;", "uri", "Landroid/app/RecoverableSecurityException;", "exception", "<init>", "(Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;Ljava/lang/String;Landroid/net/Uri;Landroid/app/RecoverableSecurityException;)V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()V", "", "resultCode", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(I)V", "Ljava/lang/String;", "getId", "()Ljava/lang/String;", "Landroid/net/Uri;", "getUri", "()Landroid/net/Uri;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/app/RecoverableSecurityException;", "photo_manager_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public final class AndroidQDeleteTask {
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final RecoverableSecurityException f7371Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Uri f7372Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String f7373Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public AndroidQDeleteTask(@NotNull String str, @NotNull Uri uri, @NotNull RecoverableSecurityException recoverableSecurityException) {
            this.f7373Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
            this.f7372Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = uri;
            this.f7371Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = recoverableSecurityException;
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            RemoteAction userAction;
            PendingIntent actionIntent;
            Intent intent = new Intent();
            intent.setData(this.f7372Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            Activity activity = PhotoManagerDeleteManager.this.f7368Wwwwwwwwwwwwwwwwwwwwwwww;
            if (activity != null) {
                userAction = this.f7371Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getUserAction();
                actionIntent = userAction.getActionIntent();
                activity.startIntentSenderForResult(actionIntent.getIntentSender(), PhotoManagerDeleteManager.this.f7367Wwwwwwwwwwwwwwwwwwwwwww, intent, 0, 0, 0);
            }
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
            if (i == -1) {
                PhotoManagerDeleteManager.this.f7365Wwwwwwwwwwwwwwwwwwwww.add(this.f7373Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            }
            PhotoManagerDeleteManager.this.Wwwwwwwwwwwwwwwwwwww();
        }
    }

    public PhotoManagerDeleteManager(@NotNull Context context, @Nullable Activity activity) {
        this.f7369Wwwwwwwwwwwwwwwwwwwwwwwww = context;
        this.f7368Wwwwwwwwwwwwwwwwwwwwwwww = activity;
    }

    public static final CharSequence Wwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        return "?";
    }

    @RequiresApi(29)
    public final void Wwwwwwwwwwwwwwwwwwww() {
        AndroidQDeleteTask poll = this.f7363Wwwwwwwwwwwwwwwwwww.poll();
        if (poll == null) {
            Wwwwwwwwwwwwwwwwwwwww();
            return;
        }
        this.f7362Wwwwwwwwwwwwwwwwww = poll;
        poll.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public final void Wwwwwwwwwwwwwwwwwwwww() {
        if (!this.f7365Wwwwwwwwwwwwwwwwwwwww.isEmpty()) {
            for (String str : this.f7365Wwwwwwwwwwwwwwwwwwwww) {
                Uri uri = this.f7366Wwwwwwwwwwwwwwwwwwwwww.get(str);
                if (uri != null) {
                    Wwwwwwwwwwwwwwwwwwwwwwww().delete(uri, null, null);
                }
            }
        }
        ResultHandler resultHandler = this.f7359Wwwwwwwwwwwwwww;
        if (resultHandler != null) {
            resultHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(CollectionsKt.plus((Collection) CollectionsKt.toList(this.f7365Wwwwwwwwwwwwwwwwwwwww), (Iterable) CollectionsKt.toList(this.f7364Wwwwwwwwwwwwwwwwwwww)));
        }
        this.f7365Wwwwwwwwwwwwwwwwwwwww.clear();
        this.f7364Wwwwwwwwwwwwwwwwwwww.clear();
        this.f7359Wwwwwwwwwwwwwww = null;
    }

    @RequiresApi(30)
    public final void Wwwwwwwwwwwwwwwwwwwwww(@NotNull List<? extends Uri> list, @NotNull ResultHandler resultHandler) {
        PendingIntent createTrashRequest;
        this.f7360Wwwwwwwwwwwwwwww = resultHandler;
        ContentResolver Wwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwww();
        ArrayList arrayList = new ArrayList();
        for (Uri uri : list) {
            if (uri != null) {
                arrayList.add(uri);
            }
        }
        createTrashRequest = MediaStore.createTrashRequest(Wwwwwwwwwwwwwwwwwwwwwwww2, arrayList, true);
        Activity activity = this.f7368Wwwwwwwwwwwwwwwwwwwwwwww;
        if (activity != null) {
            activity.startIntentSenderForResult(createTrashRequest.getIntentSender(), this.f7361Wwwwwwwwwwwwwwwww, null, 0, 0, 0);
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwww(int i) {
        List list;
        ResultHandler resultHandler;
        if (i == -1) {
            ResultHandler resultHandler2 = this.f7360Wwwwwwwwwwwwwwww;
            if (resultHandler2 != null && (list = (List) resultHandler2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().argument("ids")) != null && (resultHandler = this.f7360Wwwwwwwwwwwwwwww) != null) {
                resultHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(list);
                return;
            }
            return;
        }
        ResultHandler resultHandler3 = this.f7360Wwwwwwwwwwwwwwww;
        if (resultHandler3 != null) {
            resultHandler3.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(CollectionsKt.emptyList());
        }
    }

    public final ContentResolver Wwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f7369Wwwwwwwwwwwwwwwwwwwwwwwww.getContentResolver();
    }

    @RequiresApi(29)
    public final void Wwwwwwwwwwwwwwwwwwwwwwwww(@NotNull HashMap<String, Uri> hashMap, @NotNull ResultHandler resultHandler) {
        this.f7359Wwwwwwwwwwwwwww = resultHandler;
        this.f7366Wwwwwwwwwwwwwwwwwwwwww.clear();
        this.f7366Wwwwwwwwwwwwwwwwwwwwww.putAll(hashMap);
        this.f7365Wwwwwwwwwwwwwwwwwwwww.clear();
        this.f7364Wwwwwwwwwwwwwwwwwwww.clear();
        this.f7363Wwwwwwwwwwwwwwwwwww.clear();
        for (Map.Entry<String, Uri> entry : hashMap.entrySet()) {
            Uri value = entry.getValue();
            if (value != null) {
                String key = entry.getKey();
                try {
                    Wwwwwwwwwwwwwwwwwwwwwwww().delete(value, null, null);
                    this.f7364Wwwwwwwwwwwwwwwwwwww.add(key);
                } catch (Exception e) {
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(e)) {
                        this.f7363Wwwwwwwwwwwwwwwwwww.add(new AndroidQDeleteTask(key, value, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(e)));
                    } else {
                        LogUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("delete assets error in api 29", e);
                        Wwwwwwwwwwwwwwwwwwwww();
                        return;
                    }
                }
            }
        }
        Wwwwwwwwwwwwwwwwwwww();
    }

    @RequiresApi(30)
    public final void Wwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull List<? extends Uri> list, @NotNull ResultHandler resultHandler) {
        PendingIntent createDeleteRequest;
        this.f7360Wwwwwwwwwwwwwwww = resultHandler;
        ContentResolver Wwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwww();
        ArrayList arrayList = new ArrayList();
        for (Uri uri : list) {
            if (uri != null) {
                arrayList.add(uri);
            }
        }
        createDeleteRequest = MediaStore.createDeleteRequest(Wwwwwwwwwwwwwwwwwwwwwwww2, arrayList);
        Activity activity = this.f7368Wwwwwwwwwwwwwwwwwwwwwwww;
        if (activity != null) {
            activity.startIntentSenderForResult(createDeleteRequest.getIntentSender(), this.f7361Wwwwwwwwwwwwwwwww, null, 0, 0, 0);
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull List<String> list) {
        String joinToString$default = CollectionsKt.joinToString$default(list, ",", null, null, 0, null, new Function1() { // from class: com.fluttercandies.photo_manager.core.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                CharSequence Wwwwwwwwwwwwwwwwwwwwwwwwwww2;
                Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = PhotoManagerDeleteManager.Wwwwwwwwwwwwwwwwwwwwwwwwwww((String) obj);
                return Wwwwwwwwwwwwwwwwwwwwwwwwwww2;
            }
        }, 30, null);
        ContentResolver Wwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwww();
        Uri Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = IDBUtils.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        Wwwwwwwwwwwwwwwwwwwwwwww2.delete(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, "_id in (" + joinToString$default + ")", (String[]) list.toArray(new String[0]));
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Activity activity) {
        this.f7368Wwwwwwwwwwwwwwwwwwwwwwww = activity;
    }

    @Override // io.flutter.plugin.common.PluginRegistry.ActivityResultListener
    public boolean onActivityResult(int i, int i2, @Nullable Intent intent) {
        AndroidQDeleteTask androidQDeleteTask;
        if (i == this.f7361Wwwwwwwwwwwwwwwww) {
            Wwwwwwwwwwwwwwwwwwwwwww(i2);
            return true;
        } else if (i == this.f7367Wwwwwwwwwwwwwwwwwwwwwww) {
            if (Build.VERSION.SDK_INT >= 29 && (androidQDeleteTask = this.f7362Wwwwwwwwwwwwwwwwww) != null) {
                androidQDeleteTask.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i2);
            }
            return true;
        } else {
            return false;
        }
    }
}
