package dev.fluttercommunity.plus.share;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Parcelable;
import androidx.core.content.FileProvider;
import androidx.webkit.ProxyConfig;
import androidx.webkit.internal.AssetHelper;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.sensorsdata.analytics.android.sdk.aop.push.PushAutoTrackHelper;
import com.tencent.thumbplayer.tcmedia.core.common.TPMediaCodecProfileLevel;
import dev.fluttercommunity.plus.share.Share;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.io.FilesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\b\n\u0002\b\u0007\b\u0000\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\u000b\u001a\u00020\n2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u000b\u0010\fJ)\u0010\u0012\u001a\u00020\n2\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00010\r2\u0006\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u001f\u0010\u0018\u001a\u00020\n2\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0018\u0010\u0019J-\u0010\u001f\u001a\u0012\u0012\u0004\u0012\u00020\u001d0\u001cj\b\u0012\u0004\u0012\u00020\u001d`\u001e2\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u000e0\u001aH\u0002¢\u0006\u0004\b\u001f\u0010 J\u001f\u0010\"\u001a\u00020\u000e2\u000e\u0010!\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u001aH\u0002¢\u0006\u0004\b\"\u0010#J\u0019\u0010%\u001a\u00020\u000e2\b\u0010$\u001a\u0004\u0018\u00010\u000eH\u0002¢\u0006\u0004\b%\u0010&J\u0017\u0010)\u001a\u00020\u00102\u0006\u0010(\u001a\u00020'H\u0002¢\u0006\u0004\b)\u0010*J\u000f\u0010+\u001a\u00020\nH\u0002¢\u0006\u0004\b+\u0010,J\u0017\u0010-\u001a\u00020'2\u0006\u0010(\u001a\u00020'H\u0002¢\u0006\u0004\b-\u0010.R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b/\u00100R\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b1\u00102R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b+\u00103R\u001b\u00107\u001a\u00020\u000e8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b-\u00104\u001a\u0004\b5\u00106R\u001b\u0010;\u001a\u0002088BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b)\u00104\u001a\u0004\b9\u0010:R\u0014\u0010>\u001a\u00020'8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b<\u0010=¨\u0006?"}, d2 = {"Ldev/fluttercommunity/plus/share/Share;", "", "Landroid/content/Context;", "context", "Landroid/app/Activity;", "activity", "Ldev/fluttercommunity/plus/share/ShareSuccessManager;", "manager", "<init>", "(Landroid/content/Context;Landroid/app/Activity;Ldev/fluttercommunity/plus/share/ShareSuccessManager;)V", "", "Wwwwwwwwwwwwwwwwwwww", "(Landroid/app/Activity;)V", "", "", "arguments", "", "withResult", "Wwwwwwwwwwwwwwwwwww", "(Ljava/util/Map;Z)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Landroid/content/Context;", "Landroid/content/Intent;", "intent", "Wwwwwwwwwwwwwwwwww", "(Landroid/content/Intent;Z)V", "", "paths", "Ljava/util/ArrayList;", "Landroid/net/Uri;", "Lkotlin/collections/ArrayList;", "Wwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/util/List;)Ljava/util/ArrayList;", "mimeTypes", "Wwwwwwwwwwwwwwwwwwwww", "(Ljava/util/List;)Ljava/lang/String;", "mimeType", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Ljava/lang/String;", "Ljava/io/File;", "file", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/io/File;)Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/io/File;)Ljava/io/File;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/content/Context;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/app/Activity;", "Ldev/fluttercommunity/plus/share/ShareSuccessManager;", "Lkotlin/Lazy;", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/lang/String;", "providerAuthority", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "()I", "immutabilityIntentFlags", "Wwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/io/File;", "shareCacheFolder", "share_plus_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nShare.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Share.kt\ndev/fluttercommunity/plus/share/Share\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,249:1\n808#2,11:250\n808#2,11:261\n1869#2:273\n1869#2,2:274\n1870#2:276\n1869#2,2:277\n1#3:272\n13472#4,2:279\n*S KotlinDebug\n*F\n+ 1 Share.kt\ndev/fluttercommunity/plus/share/Share\n*L\n66#1:250,11\n67#1:261,11\n139#1:273\n141#1:274,2\n139#1:276\n175#1:277,2\n233#1:279,2\n*E\n"})
/* loaded from: classes6.dex */
public final class Share {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ShareSuccessManager f11145Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Activity f11146Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Context f11147Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Lazy f11144Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = LazyKt.lazy(new Function0() { // from class: Kkkkkkkkkk.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            String Wwwwwwwwwwwwwwwwwwwwww2;
            Wwwwwwwwwwwwwwwwwwwwww2 = Share.Wwwwwwwwwwwwwwwwwwwwww(Share.this);
            return Wwwwwwwwwwwwwwwwwwwwww2;
        }
    });
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Lazy f11143Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = LazyKt.lazy(new Function0() { // from class: Kkkkkkkkkk.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            int Wwwwwwwwwwwwwwwwwwwwwww2;
            Wwwwwwwwwwwwwwwwwwwwwww2 = Share.Wwwwwwwwwwwwwwwwwwwwwww();
            return Integer.valueOf(Wwwwwwwwwwwwwwwwwwwwwww2);
        }
    });

    public Share(@NotNull Context context, @Nullable Activity activity, @NotNull ShareSuccessManager shareSuccessManager) {
        this.f11147Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = context;
        this.f11146Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = activity;
        this.f11145Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = shareSuccessManager;
    }

    public static final String Wwwwwwwwwwwwwwwwwwwwww(Share share) {
        String packageName = share.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww().getPackageName();
        return packageName + ".flutter.share_provider";
    }

    public static final int Wwwwwwwwwwwwwwwwwwwwwww() {
        return TPMediaCodecProfileLevel.HEVCHighTierLevel62;
    }

    public final void Wwwwwwwwwwwwwwwwww(Intent intent, boolean z) {
        Activity activity = this.f11146Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (activity != null) {
            if (z) {
                activity.startActivityForResult(intent, 22643);
                return;
            } else {
                activity.startActivity(intent);
                return;
            }
        }
        intent.addFlags(268435456);
        if (z) {
            this.f11145Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        this.f11147Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.startActivity(intent);
    }

    public final void Wwwwwwwwwwwwwwwwwww(@NotNull Map<String, ? extends Object> map, boolean z) throws IOException {
        List<String> list;
        List<String> list2;
        String str;
        Intent createChooser;
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        String str2 = (String) map.get("text");
        String str3 = (String) map.get("uri");
        String str4 = (String) map.get("subject");
        String str5 = (String) map.get(CampaignEx.JSON_KEY_TITLE);
        List list3 = (List) map.get("paths");
        ArrayList<Uri> arrayList = null;
        if (list3 != null) {
            list = new ArrayList<>();
            for (Object obj : list3) {
                if (obj instanceof String) {
                    list.add(obj);
                }
            }
        } else {
            list = null;
        }
        List list4 = (List) map.get("mimeTypes");
        if (list4 != null) {
            list2 = new ArrayList<>();
            for (Object obj2 : list4) {
                if (obj2 instanceof String) {
                    list2.add(obj2);
                }
            }
        } else {
            list2 = null;
        }
        if (list != null) {
            arrayList = Wwwwwwwwwwwwwwwwwwwwwwww(list);
        }
        Intent intent = new Intent();
        if (arrayList == null) {
            intent.setAction("android.intent.action.SEND");
            intent.setType(AssetHelper.DEFAULT_MIME_TYPE);
            if (str3 != null) {
                str2 = str3;
            }
            intent.putExtra("android.intent.extra.TEXT", str2);
            if (str4 != null && !StringsKt.isBlank(str4)) {
                intent.putExtra("android.intent.extra.SUBJECT", str4);
            }
            if (str5 != null && !StringsKt.isBlank(str5)) {
                intent.putExtra("android.intent.extra.TITLE", str5);
            }
        } else if (!arrayList.isEmpty()) {
            if (arrayList.size() == 1) {
                if (list2 != null && !list2.isEmpty()) {
                    str = (String) CollectionsKt.first((List<? extends Object>) list2);
                } else {
                    str = "*/*";
                }
                intent.setAction("android.intent.action.SEND");
                intent.setType(str);
                intent.putExtra("android.intent.extra.STREAM", (Parcelable) CollectionsKt.first((List<? extends Object>) arrayList));
            } else {
                intent.setAction("android.intent.action.SEND_MULTIPLE");
                intent.setType(Wwwwwwwwwwwwwwwwwwwww(list2));
                intent.putParcelableArrayListExtra("android.intent.extra.STREAM", arrayList);
            }
            if (str2 != null && !StringsKt.isBlank(str2)) {
                intent.putExtra("android.intent.extra.TEXT", str2);
            }
            if (str4 != null && !StringsKt.isBlank(str4)) {
                intent.putExtra("android.intent.extra.SUBJECT", str4);
            }
            if (str5 != null && !StringsKt.isBlank(str5)) {
                intent.putExtra("android.intent.extra.TITLE", str5);
            }
            intent.addFlags(1);
        } else {
            throw new IOException("Error sharing files: No files found");
        }
        if (z) {
            Context context = this.f11147Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            Intent intent2 = new Intent(this.f11147Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, SharePlusPendingIntent.class);
            int Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = 134217728 | Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
            PushAutoTrackHelper.hookIntentGetBroadcast(context, 0, intent2, Wwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            PendingIntent broadcast = PendingIntent.getBroadcast(context, 0, intent2, Wwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            PushAutoTrackHelper.hookPendingIntentGetBroadcast(broadcast, context, 0, intent2, Wwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            createChooser = Intent.createChooser(intent, str5, broadcast.getIntentSender());
        } else {
            createChooser = Intent.createChooser(intent, str5);
        }
        if (arrayList != null) {
            for (ResolveInfo resolveInfo : Wwwwwwwwwwwwwwwwwwwwwwwwwwwww().getPackageManager().queryIntentActivities(createChooser, 65536)) {
                String str6 = resolveInfo.activityInfo.packageName;
                int size = arrayList.size();
                int i = 0;
                while (i < size) {
                    Uri uri = arrayList.get(i);
                    i++;
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwww().grantUriPermission(str6, uri, 3);
                }
            }
        }
        Wwwwwwwwwwwwwwwwww(createChooser, z);
    }

    public final void Wwwwwwwwwwwwwwwwwwww(@Nullable Activity activity) {
        this.f11146Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = activity;
    }

    public final String Wwwwwwwwwwwwwwwwwwwww(List<String> list) {
        if (list == null || list.isEmpty()) {
            return "*/*";
        }
        int i = 1;
        if (list.size() == 1) {
            return (String) CollectionsKt.first((List<? extends Object>) list);
        }
        String str = (String) CollectionsKt.first((List<? extends Object>) list);
        int lastIndex = CollectionsKt.getLastIndex(list);
        if (1 <= lastIndex) {
            while (true) {
                if (!Intrinsics.areEqual(str, list.get(i))) {
                    if (!Intrinsics.areEqual(Wwwwwwwwwwwwwwwwwwwwwwwwwww(str), Wwwwwwwwwwwwwwwwwwwwwwwwwww(list.get(i)))) {
                        return "*/*";
                    }
                    str = Wwwwwwwwwwwwwwwwwwwwwwwwwww(list.get(i)) + "/*";
                }
                if (i == lastIndex) {
                    break;
                }
                i++;
            }
        }
        return str;
    }

    public final ArrayList<Uri> Wwwwwwwwwwwwwwwwwwwwwwww(List<String> list) throws IOException {
        ArrayList<Uri> arrayList = new ArrayList<>(list.size());
        for (String str : list) {
            File file = new File(str);
            if (!Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(file)) {
                arrayList.add(FileProvider.getUriForFile(Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(), Wwwwwwwwwwwwwwwwwwwwwwwwww(), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(file)));
            } else {
                String canonicalPath = Wwwwwwwwwwwwwwwwwwwwwwwww().getCanonicalPath();
                throw new IOException("Shared file can not be located in '" + canonicalPath + "'");
            }
        }
        return arrayList;
    }

    public final File Wwwwwwwwwwwwwwwwwwwwwwwww() {
        return new File(Wwwwwwwwwwwwwwwwwwwwwwwwwwwww().getCacheDir(), "share_plus");
    }

    public final String Wwwwwwwwwwwwwwwwwwwwwwwwww() {
        return (String) this.f11144Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getValue();
    }

    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        if (str != null && StringsKt.contains$default((CharSequence) str, (CharSequence) "/", false, 2, (Object) null)) {
            return str.substring(0, StringsKt.indexOf$default((CharSequence) str, "/", 0, false, 6, (Object) null));
        }
        return ProxyConfig.MATCH_ALL_SCHEMES;
    }

    public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return ((Number) this.f11143Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getValue()).intValue();
    }

    public final Context Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        Activity activity = this.f11146Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (activity != null) {
            return activity;
        }
        return this.f11147Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(File file) {
        try {
            return StringsKt.startsWith$default(file.getCanonicalPath(), Wwwwwwwwwwwwwwwwwwwwwwwww().getCanonicalPath(), false, 2, (Object) null);
        } catch (IOException unused) {
            return false;
        }
    }

    public final File Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(File file) throws IOException {
        File Wwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwww();
        if (!Wwwwwwwwwwwwwwwwwwwwwwwww2.exists()) {
            Wwwwwwwwwwwwwwwwwwwwwwwww2.mkdirs();
        }
        File file2 = new File(Wwwwwwwwwwwwwwwwwwwwwwwww2, file.getName());
        FilesKt.copyTo$default(file, file2, true, 0, 4, null);
        return file2;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        File Wwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwww();
        File[] listFiles = Wwwwwwwwwwwwwwwwwwwwwwwww2.listFiles();
        if (Wwwwwwwwwwwwwwwwwwwwwwwww2.exists() && listFiles != null && listFiles.length != 0) {
            for (File file : listFiles) {
                file.delete();
            }
            Wwwwwwwwwwwwwwwwwwwwwwwww2.delete();
        }
    }
}
