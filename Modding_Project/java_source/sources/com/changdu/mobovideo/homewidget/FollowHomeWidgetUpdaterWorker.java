package com.changdu.mobovideo.homewidget;

import android.content.Context;
import android.graphics.Bitmap;
import androidx.work.CoroutineWorker;
import androidx.work.WorkerParameters;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Dispatchers;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\t\u001a\u00020\bH\u0096@¢\u0006\u0004\b\t\u0010\nJ\u001a\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010\f\u001a\u00020\u000bH\u0082@¢\u0006\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011¨\u0006\u0012"}, d2 = {"Lcom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker;", "Landroidx/work/CoroutineWorker;", "Landroid/content/Context;", "appContext", "Landroidx/work/WorkerParameters;", "params", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "Landroidx/work/ListenableWorker$Result;", "doWork", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "imageUrl", "Landroid/graphics/Bitmap;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/content/Context;", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class FollowHomeWidgetUpdaterWorker extends CoroutineWorker {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Context f5467Wwwwwwwwwwwwwwwwwwwwwwwww;

    public FollowHomeWidgetUpdaterWorker(@NotNull Context context, @NotNull WorkerParameters workerParameters) {
        super(context, workerParameters);
        this.f5467Wwwwwwwwwwwwwwwwwwwwwwwww = context;
    }

    public final Object Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, Continuation<? super Bitmap> continuation) {
        if (str == null || StringsKt.isBlank(str)) {
            return null;
        }
        return BuildersKt.withContext(Dispatchers.getIO(), new FollowHomeWidgetUpdaterWorker$loadImage$2(str, null), continuation);
    }

    /* JADX WARN: Removed duplicated region for block: B:106:0x025e A[Catch: IOException -> 0x041b, TryCatch #0 {IOException -> 0x041b, blocks: (B:18:0x005d, B:92:0x01c5, B:94:0x0200, B:96:0x0207, B:98:0x020d, B:114:0x027b, B:116:0x0281, B:119:0x0289, B:123:0x02a2, B:125:0x02b0, B:128:0x02b8, B:130:0x02bf, B:132:0x02c9, B:136:0x02fe, B:138:0x030a, B:141:0x0312, B:143:0x0319, B:145:0x0323, B:149:0x0350, B:151:0x035c, B:154:0x0364, B:156:0x036b, B:158:0x0375, B:162:0x03a2, B:164:0x03ae, B:167:0x03b6, B:169:0x03bd, B:171:0x03c7, B:179:0x040d, B:172:0x03e4, B:159:0x0392, B:146:0x0340, B:133:0x02e6, B:173:0x03ed, B:175:0x03fb, B:178:0x040a, B:177:0x0401, B:99:0x0225, B:101:0x0236, B:104:0x023e, B:106:0x025e, B:111:0x0273, B:110:0x0269, B:23:0x0086, B:83:0x019c, B:85:0x01a0, B:88:0x01a7, B:26:0x00a8, B:74:0x0173, B:76:0x0177, B:79:0x017e, B:29:0x00c1, B:65:0x014c, B:67:0x0150, B:70:0x0157, B:30:0x00cb, B:36:0x00e5, B:38:0x00e9, B:40:0x00ef, B:43:0x00fa, B:45:0x0100, B:48:0x010a, B:50:0x0110, B:53:0x011a, B:55:0x0120, B:58:0x012a, B:61:0x0131, B:33:0x00d2), top: B:183:0x002f }] */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x029d  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x02e6 A[Catch: IOException -> 0x041b, TryCatch #0 {IOException -> 0x041b, blocks: (B:18:0x005d, B:92:0x01c5, B:94:0x0200, B:96:0x0207, B:98:0x020d, B:114:0x027b, B:116:0x0281, B:119:0x0289, B:123:0x02a2, B:125:0x02b0, B:128:0x02b8, B:130:0x02bf, B:132:0x02c9, B:136:0x02fe, B:138:0x030a, B:141:0x0312, B:143:0x0319, B:145:0x0323, B:149:0x0350, B:151:0x035c, B:154:0x0364, B:156:0x036b, B:158:0x0375, B:162:0x03a2, B:164:0x03ae, B:167:0x03b6, B:169:0x03bd, B:171:0x03c7, B:179:0x040d, B:172:0x03e4, B:159:0x0392, B:146:0x0340, B:133:0x02e6, B:173:0x03ed, B:175:0x03fb, B:178:0x040a, B:177:0x0401, B:99:0x0225, B:101:0x0236, B:104:0x023e, B:106:0x025e, B:111:0x0273, B:110:0x0269, B:23:0x0086, B:83:0x019c, B:85:0x01a0, B:88:0x01a7, B:26:0x00a8, B:74:0x0173, B:76:0x0177, B:79:0x017e, B:29:0x00c1, B:65:0x014c, B:67:0x0150, B:70:0x0157, B:30:0x00cb, B:36:0x00e5, B:38:0x00e9, B:40:0x00ef, B:43:0x00fa, B:45:0x0100, B:48:0x010a, B:50:0x0110, B:53:0x011a, B:55:0x0120, B:58:0x012a, B:61:0x0131, B:33:0x00d2), top: B:183:0x002f }] */
    /* JADX WARN: Removed duplicated region for block: B:136:0x02fe A[Catch: IOException -> 0x041b, TryCatch #0 {IOException -> 0x041b, blocks: (B:18:0x005d, B:92:0x01c5, B:94:0x0200, B:96:0x0207, B:98:0x020d, B:114:0x027b, B:116:0x0281, B:119:0x0289, B:123:0x02a2, B:125:0x02b0, B:128:0x02b8, B:130:0x02bf, B:132:0x02c9, B:136:0x02fe, B:138:0x030a, B:141:0x0312, B:143:0x0319, B:145:0x0323, B:149:0x0350, B:151:0x035c, B:154:0x0364, B:156:0x036b, B:158:0x0375, B:162:0x03a2, B:164:0x03ae, B:167:0x03b6, B:169:0x03bd, B:171:0x03c7, B:179:0x040d, B:172:0x03e4, B:159:0x0392, B:146:0x0340, B:133:0x02e6, B:173:0x03ed, B:175:0x03fb, B:178:0x040a, B:177:0x0401, B:99:0x0225, B:101:0x0236, B:104:0x023e, B:106:0x025e, B:111:0x0273, B:110:0x0269, B:23:0x0086, B:83:0x019c, B:85:0x01a0, B:88:0x01a7, B:26:0x00a8, B:74:0x0173, B:76:0x0177, B:79:0x017e, B:29:0x00c1, B:65:0x014c, B:67:0x0150, B:70:0x0157, B:30:0x00cb, B:36:0x00e5, B:38:0x00e9, B:40:0x00ef, B:43:0x00fa, B:45:0x0100, B:48:0x010a, B:50:0x0110, B:53:0x011a, B:55:0x0120, B:58:0x012a, B:61:0x0131, B:33:0x00d2), top: B:183:0x002f }] */
    /* JADX WARN: Removed duplicated region for block: B:146:0x0340 A[Catch: IOException -> 0x041b, TryCatch #0 {IOException -> 0x041b, blocks: (B:18:0x005d, B:92:0x01c5, B:94:0x0200, B:96:0x0207, B:98:0x020d, B:114:0x027b, B:116:0x0281, B:119:0x0289, B:123:0x02a2, B:125:0x02b0, B:128:0x02b8, B:130:0x02bf, B:132:0x02c9, B:136:0x02fe, B:138:0x030a, B:141:0x0312, B:143:0x0319, B:145:0x0323, B:149:0x0350, B:151:0x035c, B:154:0x0364, B:156:0x036b, B:158:0x0375, B:162:0x03a2, B:164:0x03ae, B:167:0x03b6, B:169:0x03bd, B:171:0x03c7, B:179:0x040d, B:172:0x03e4, B:159:0x0392, B:146:0x0340, B:133:0x02e6, B:173:0x03ed, B:175:0x03fb, B:178:0x040a, B:177:0x0401, B:99:0x0225, B:101:0x0236, B:104:0x023e, B:106:0x025e, B:111:0x0273, B:110:0x0269, B:23:0x0086, B:83:0x019c, B:85:0x01a0, B:88:0x01a7, B:26:0x00a8, B:74:0x0173, B:76:0x0177, B:79:0x017e, B:29:0x00c1, B:65:0x014c, B:67:0x0150, B:70:0x0157, B:30:0x00cb, B:36:0x00e5, B:38:0x00e9, B:40:0x00ef, B:43:0x00fa, B:45:0x0100, B:48:0x010a, B:50:0x0110, B:53:0x011a, B:55:0x0120, B:58:0x012a, B:61:0x0131, B:33:0x00d2), top: B:183:0x002f }] */
    /* JADX WARN: Removed duplicated region for block: B:149:0x0350 A[Catch: IOException -> 0x041b, TryCatch #0 {IOException -> 0x041b, blocks: (B:18:0x005d, B:92:0x01c5, B:94:0x0200, B:96:0x0207, B:98:0x020d, B:114:0x027b, B:116:0x0281, B:119:0x0289, B:123:0x02a2, B:125:0x02b0, B:128:0x02b8, B:130:0x02bf, B:132:0x02c9, B:136:0x02fe, B:138:0x030a, B:141:0x0312, B:143:0x0319, B:145:0x0323, B:149:0x0350, B:151:0x035c, B:154:0x0364, B:156:0x036b, B:158:0x0375, B:162:0x03a2, B:164:0x03ae, B:167:0x03b6, B:169:0x03bd, B:171:0x03c7, B:179:0x040d, B:172:0x03e4, B:159:0x0392, B:146:0x0340, B:133:0x02e6, B:173:0x03ed, B:175:0x03fb, B:178:0x040a, B:177:0x0401, B:99:0x0225, B:101:0x0236, B:104:0x023e, B:106:0x025e, B:111:0x0273, B:110:0x0269, B:23:0x0086, B:83:0x019c, B:85:0x01a0, B:88:0x01a7, B:26:0x00a8, B:74:0x0173, B:76:0x0177, B:79:0x017e, B:29:0x00c1, B:65:0x014c, B:67:0x0150, B:70:0x0157, B:30:0x00cb, B:36:0x00e5, B:38:0x00e9, B:40:0x00ef, B:43:0x00fa, B:45:0x0100, B:48:0x010a, B:50:0x0110, B:53:0x011a, B:55:0x0120, B:58:0x012a, B:61:0x0131, B:33:0x00d2), top: B:183:0x002f }] */
    /* JADX WARN: Removed duplicated region for block: B:159:0x0392 A[Catch: IOException -> 0x041b, TryCatch #0 {IOException -> 0x041b, blocks: (B:18:0x005d, B:92:0x01c5, B:94:0x0200, B:96:0x0207, B:98:0x020d, B:114:0x027b, B:116:0x0281, B:119:0x0289, B:123:0x02a2, B:125:0x02b0, B:128:0x02b8, B:130:0x02bf, B:132:0x02c9, B:136:0x02fe, B:138:0x030a, B:141:0x0312, B:143:0x0319, B:145:0x0323, B:149:0x0350, B:151:0x035c, B:154:0x0364, B:156:0x036b, B:158:0x0375, B:162:0x03a2, B:164:0x03ae, B:167:0x03b6, B:169:0x03bd, B:171:0x03c7, B:179:0x040d, B:172:0x03e4, B:159:0x0392, B:146:0x0340, B:133:0x02e6, B:173:0x03ed, B:175:0x03fb, B:178:0x040a, B:177:0x0401, B:99:0x0225, B:101:0x0236, B:104:0x023e, B:106:0x025e, B:111:0x0273, B:110:0x0269, B:23:0x0086, B:83:0x019c, B:85:0x01a0, B:88:0x01a7, B:26:0x00a8, B:74:0x0173, B:76:0x0177, B:79:0x017e, B:29:0x00c1, B:65:0x014c, B:67:0x0150, B:70:0x0157, B:30:0x00cb, B:36:0x00e5, B:38:0x00e9, B:40:0x00ef, B:43:0x00fa, B:45:0x0100, B:48:0x010a, B:50:0x0110, B:53:0x011a, B:55:0x0120, B:58:0x012a, B:61:0x0131, B:33:0x00d2), top: B:183:0x002f }] */
    /* JADX WARN: Removed duplicated region for block: B:162:0x03a2 A[Catch: IOException -> 0x041b, TryCatch #0 {IOException -> 0x041b, blocks: (B:18:0x005d, B:92:0x01c5, B:94:0x0200, B:96:0x0207, B:98:0x020d, B:114:0x027b, B:116:0x0281, B:119:0x0289, B:123:0x02a2, B:125:0x02b0, B:128:0x02b8, B:130:0x02bf, B:132:0x02c9, B:136:0x02fe, B:138:0x030a, B:141:0x0312, B:143:0x0319, B:145:0x0323, B:149:0x0350, B:151:0x035c, B:154:0x0364, B:156:0x036b, B:158:0x0375, B:162:0x03a2, B:164:0x03ae, B:167:0x03b6, B:169:0x03bd, B:171:0x03c7, B:179:0x040d, B:172:0x03e4, B:159:0x0392, B:146:0x0340, B:133:0x02e6, B:173:0x03ed, B:175:0x03fb, B:178:0x040a, B:177:0x0401, B:99:0x0225, B:101:0x0236, B:104:0x023e, B:106:0x025e, B:111:0x0273, B:110:0x0269, B:23:0x0086, B:83:0x019c, B:85:0x01a0, B:88:0x01a7, B:26:0x00a8, B:74:0x0173, B:76:0x0177, B:79:0x017e, B:29:0x00c1, B:65:0x014c, B:67:0x0150, B:70:0x0157, B:30:0x00cb, B:36:0x00e5, B:38:0x00e9, B:40:0x00ef, B:43:0x00fa, B:45:0x0100, B:48:0x010a, B:50:0x0110, B:53:0x011a, B:55:0x0120, B:58:0x012a, B:61:0x0131, B:33:0x00d2), top: B:183:0x002f }] */
    /* JADX WARN: Removed duplicated region for block: B:172:0x03e4 A[Catch: IOException -> 0x041b, TryCatch #0 {IOException -> 0x041b, blocks: (B:18:0x005d, B:92:0x01c5, B:94:0x0200, B:96:0x0207, B:98:0x020d, B:114:0x027b, B:116:0x0281, B:119:0x0289, B:123:0x02a2, B:125:0x02b0, B:128:0x02b8, B:130:0x02bf, B:132:0x02c9, B:136:0x02fe, B:138:0x030a, B:141:0x0312, B:143:0x0319, B:145:0x0323, B:149:0x0350, B:151:0x035c, B:154:0x0364, B:156:0x036b, B:158:0x0375, B:162:0x03a2, B:164:0x03ae, B:167:0x03b6, B:169:0x03bd, B:171:0x03c7, B:179:0x040d, B:172:0x03e4, B:159:0x0392, B:146:0x0340, B:133:0x02e6, B:173:0x03ed, B:175:0x03fb, B:178:0x040a, B:177:0x0401, B:99:0x0225, B:101:0x0236, B:104:0x023e, B:106:0x025e, B:111:0x0273, B:110:0x0269, B:23:0x0086, B:83:0x019c, B:85:0x01a0, B:88:0x01a7, B:26:0x00a8, B:74:0x0173, B:76:0x0177, B:79:0x017e, B:29:0x00c1, B:65:0x014c, B:67:0x0150, B:70:0x0157, B:30:0x00cb, B:36:0x00e5, B:38:0x00e9, B:40:0x00ef, B:43:0x00fa, B:45:0x0100, B:48:0x010a, B:50:0x0110, B:53:0x011a, B:55:0x0120, B:58:0x012a, B:61:0x0131, B:33:0x00d2), top: B:183:0x002f }] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0143  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0145  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x016b  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x016c  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0195  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0196  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x01c1  */
    @Override // androidx.work.CoroutineWorker
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object doWork(@org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation<? super androidx.work.ListenableWorker.Result> r26) {
        /*
            Method dump skipped, instructions count: 1056
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.changdu.mobovideo.homewidget.FollowHomeWidgetUpdaterWorker.doWork(kotlin.coroutines.Continuation):java.lang.Object");
    }
}
