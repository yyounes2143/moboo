package com.changdu.mobovideo.picture;

import android.app.job.JobInfo;
import android.app.job.JobParameters;
import android.app.job.JobScheduler;
import android.app.job.JobService;
import android.content.ComponentName;
import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.provider.MediaStore;
import androidx.annotation.RequiresApi;
import androidx.media3.common.C;
import androidx.work.impl.background.systemjob.Wwwwwwwwwwwwwwwwwwwwwwww;
import androidx.work.impl.background.systemjob.Wwwwwwwwwwwwwwwwwwwwwwwww;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 \t2\u00020\u0001:\u0001\tB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\b\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\n"}, d2 = {"Lcom/changdu/mobovideo/picture/PictureContentTriggerJobService;", "Landroid/app/job/JobService;", "<init>", "()V", "onStartJob", "", "params", "Landroid/app/job/JobParameters;", "onStopJob", "Companion", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class PictureContentTriggerJobService extends JobService {
    @NotNull
    public static final Companion Companion = new Companion(null);

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0003¢\u0006\u0004\b\u000b\u0010\fJ\u001f\u0010\u000f\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\rH\u0003¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u0017\u0010\u0019\u001a\u00020\u00162\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0019\u0010\u0018J\u0017\u0010\u001a\u001a\u00020\u00162\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u001a\u0010\u0018J\u0017\u0010\u001b\u001a\u00020\u00162\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u001b\u0010\u0018J\u0017\u0010\u001c\u001a\u00020\u00162\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u001c\u0010\u0018R\u0014\u0010\u001d\u001a\u00020\u00138\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0014\u0010 \u001a\u00020\u001f8\u0002X\u0082T¢\u0006\u0006\n\u0004\b \u0010!R\u0014\u0010#\u001a\u00020\"8\u0002X\u0082T¢\u0006\u0006\n\u0004\b#\u0010$R\u0014\u0010%\u001a\u00020\"8\u0002X\u0082T¢\u0006\u0006\n\u0004\b%\u0010$R\u0014\u0010&\u001a\u00020\u00138\u0002X\u0082T¢\u0006\u0006\n\u0004\b&\u0010\u001eR\u0014\u0010'\u001a\u00020\u00138\u0002X\u0082T¢\u0006\u0006\n\u0004\b'\u0010\u001e¨\u0006("}, d2 = {"Lcom/changdu/mobovideo/picture/PictureContentTriggerJobService$Companion;", "", "<init>", "()V", "Landroid/content/Context;", "context", "", "Wwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;)V", "Landroid/app/job/JobInfo$Builder;", "builder", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/app/job/JobInfo$Builder;)V", "Landroid/net/Uri;", "uri", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/app/job/JobInfo$Builder;Landroid/net/Uri;)V", "Landroid/app/job/JobParameters;", "params", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/app/job/JobParameters;)Ljava/lang/String;", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/net/Uri;)Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "TAG", "Ljava/lang/String;", "", "JOB_ID", "I", "", "TRIGGER_UPDATE_DELAY_MS", "J", "TRIGGER_MAX_DELAY_MS", "EXTERNAL_VOLUME", "INTERNAL_VOLUME", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nPictureContentTriggerJobService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PictureContentTriggerJobService.kt\ncom/changdu/mobovideo/picture/PictureContentTriggerJobService$Companion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,165:1\n11228#2:166\n11563#2,3:167\n*S KotlinDebug\n*F\n+ 1 PictureContentTriggerJobService.kt\ncom/changdu/mobovideo/picture/PictureContentTriggerJobService$Companion\n*L\n118#1:166\n118#1:167,3\n*E\n"})
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        public final void Wwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context) {
            JobScheduler jobScheduler;
            JobInfo.Builder triggerContentUpdateDelay;
            JobInfo.Builder triggerContentMaxDelay;
            if (Build.VERSION.SDK_INT >= 24) {
                try {
                    Object systemService = context.getSystemService("jobscheduler");
                    if (systemService instanceof JobScheduler) {
                        jobScheduler = (JobScheduler) systemService;
                    } else {
                        jobScheduler = null;
                    }
                    if (jobScheduler != null) {
                        triggerContentUpdateDelay = new JobInfo.Builder(101, new ComponentName(context, PictureContentTriggerJobService.class)).setTriggerContentUpdateDelay(C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS);
                        triggerContentMaxDelay = triggerContentUpdateDelay.setTriggerContentMaxDelay(15000L);
                        PictureContentTriggerJobService.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwww(triggerContentMaxDelay);
                        jobScheduler.schedule(triggerContentMaxDelay.build());
                    }
                } catch (Exception unused) {
                }
            }
        }

        @RequiresApi(24)
        public final void Wwwwwwwwwwwwwwwwwwwwwwwwww(JobInfo.Builder builder) {
            Uri contentUri;
            Uri contentUri2;
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(builder, MediaStore.Images.Media.EXTERNAL_CONTENT_URI);
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(builder, MediaStore.Images.Media.INTERNAL_CONTENT_URI);
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(builder, MediaStore.Video.Media.EXTERNAL_CONTENT_URI);
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(builder, MediaStore.Video.Media.INTERNAL_CONTENT_URI);
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(builder, MediaStore.Audio.Media.EXTERNAL_CONTENT_URI);
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(builder, MediaStore.Audio.Media.INTERNAL_CONTENT_URI);
            if (Build.VERSION.SDK_INT >= 29) {
                contentUri = MediaStore.Downloads.getContentUri("external");
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(builder, contentUri);
                contentUri2 = MediaStore.Downloads.getContentUri("internal");
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(builder, contentUri2);
            }
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(builder, MediaStore.Files.getContentUri("external"));
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(builder, MediaStore.Files.getContentUri("internal"));
        }

        public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwww(Uri uri) {
            String uri2 = uri.toString();
            if (!StringsKt.startsWith$default(uri2, MediaStore.Video.Media.EXTERNAL_CONTENT_URI.toString(), false, 2, (Object) null) && !StringsKt.startsWith$default(uri2, MediaStore.Video.Media.INTERNAL_CONTENT_URI.toString(), false, 2, (Object) null)) {
                return false;
            }
            return true;
        }

        public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Uri uri) {
            String uri2 = uri.toString();
            if (!StringsKt.startsWith$default(uri2, MediaStore.Images.Media.EXTERNAL_CONTENT_URI.toString(), false, 2, (Object) null) && !StringsKt.startsWith$default(uri2, MediaStore.Images.Media.INTERNAL_CONTENT_URI.toString(), false, 2, (Object) null)) {
                return false;
            }
            return true;
        }

        public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Uri uri) {
            String uri2 = uri.toString();
            if (!StringsKt.startsWith$default(uri2, MediaStore.Files.getContentUri("external").toString(), false, 2, (Object) null) && !StringsKt.startsWith$default(uri2, MediaStore.Files.getContentUri("internal").toString(), false, 2, (Object) null)) {
                return false;
            }
            return true;
        }

        public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Uri uri) {
            Uri contentUri;
            Uri contentUri2;
            if (Build.VERSION.SDK_INT < 29) {
                return false;
            }
            String uri2 = uri.toString();
            contentUri = MediaStore.Downloads.getContentUri("external");
            if (!StringsKt.startsWith$default(uri2, contentUri.toString(), false, 2, (Object) null)) {
                contentUri2 = MediaStore.Downloads.getContentUri("internal");
                if (!StringsKt.startsWith$default(uri2, contentUri2.toString(), false, 2, (Object) null)) {
                    return false;
                }
                return true;
            }
            return true;
        }

        public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Uri uri) {
            String uri2 = uri.toString();
            if (!StringsKt.startsWith$default(uri2, MediaStore.Audio.Media.EXTERNAL_CONTENT_URI.toString(), false, 2, (Object) null) && !StringsKt.startsWith$default(uri2, MediaStore.Audio.Media.INTERNAL_CONTENT_URI.toString(), false, 2, (Object) null)) {
                return false;
            }
            return true;
        }

        /* JADX WARN: Code restructure failed: missing block: B:31:0x0070, code lost:
            r13 = r13.getTriggeredContentAuthorities();
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(android.app.job.JobParameters r13) {
            /*
                r12 = this;
                int r0 = android.os.Build.VERSION.SDK_INT
                r1 = 24
                java.lang.String r2 = "content_change"
                if (r0 >= r1) goto L9
                return r2
            L9:
                java.util.LinkedHashSet r3 = new java.util.LinkedHashSet
                r3.<init>()
                android.net.Uri[] r0 = com.changdu.mobovideo.picture.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r13)
                if (r0 == 0) goto L6a
                int r1 = r0.length
                if (r1 != 0) goto L18
                goto L6a
            L18:
                java.util.Iterator r0 = kotlin.jvm.internal.ArrayIteratorKt.iterator(r0)
            L1c:
                boolean r1 = r0.hasNext()
                if (r1 == 0) goto L6a
                java.lang.Object r1 = r0.next()
                android.net.Uri r1 = (android.net.Uri) r1
                boolean r4 = r12.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(r1)
                if (r4 == 0) goto L34
                java.lang.String r1 = "media_images"
                r3.add(r1)
                goto L1c
            L34:
                boolean r4 = r12.Wwwwwwwwwwwwwwwwwwwwwwwwwww(r1)
                if (r4 == 0) goto L40
                java.lang.String r1 = "media_video"
                r3.add(r1)
                goto L1c
            L40:
                boolean r4 = r12.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r1)
                if (r4 == 0) goto L4c
                java.lang.String r1 = "media_audio"
                r3.add(r1)
                goto L1c
            L4c:
                boolean r4 = r12.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r1)
                if (r4 == 0) goto L58
                java.lang.String r1 = "media_downloads"
                r3.add(r1)
                goto L1c
            L58:
                boolean r1 = r12.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(r1)
                if (r1 == 0) goto L64
                java.lang.String r1 = "media_files"
                r3.add(r1)
                goto L1c
            L64:
                java.lang.String r1 = "media_unknown"
                r3.add(r1)
                goto L1c
            L6a:
                boolean r0 = r3.isEmpty()
                if (r0 == 0) goto La0
                java.lang.String[] r13 = com.changdu.mobovideo.picture.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r13)
                if (r13 == 0) goto La0
                int r0 = r13.length
                if (r0 != 0) goto L7a
                goto La0
            L7a:
                java.util.ArrayList r0 = new java.util.ArrayList
                int r1 = r13.length
                r0.<init>(r1)
                int r1 = r13.length
                r4 = 0
            L82:
                if (r4 >= r1) goto L9d
                r5 = r13[r4]
                java.lang.StringBuilder r6 = new java.lang.StringBuilder
                r6.<init>()
                java.lang.String r7 = "authority:"
                r6.append(r7)
                r6.append(r5)
                java.lang.String r5 = r6.toString()
                r0.add(r5)
                int r4 = r4 + 1
                goto L82
            L9d:
                kotlin.collections.CollectionsKt.addAll(r3, r0)
            La0:
                boolean r13 = r3.isEmpty()
                if (r13 == 0) goto La7
                return r2
            La7:
                r10 = 62
                r11 = 0
                java.lang.String r4 = "+"
                r5 = 0
                r6 = 0
                r7 = 0
                r8 = 0
                r9 = 0
                java.lang.String r13 = kotlin.collections.CollectionsKt.joinToString$default(r3, r4, r5, r6, r7, r8, r9, r10, r11)
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r0.<init>()
                java.lang.String r1 = "content:"
                r0.append(r1)
                r0.append(r13)
                java.lang.String r13 = r0.toString()
                return r13
            */
            throw new UnsupportedOperationException("Method not decompiled: com.changdu.mobovideo.picture.PictureContentTriggerJobService.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(android.app.job.JobParameters):java.lang.String");
        }

        @RequiresApi(24)
        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(JobInfo.Builder builder, Uri uri) {
            Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            builder.addTriggerContentUri(Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(uri, 1));
        }

        public Companion() {
        }
    }

    @Override // android.app.job.JobService
    public boolean onStartJob(@NotNull JobParameters jobParameters) {
        Companion companion = Companion;
        CDJobScheduler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(getApplicationContext(), companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(jobParameters), false, false);
        companion.Wwwwwwwwwwwwwwwwwwwwwwwww(getApplicationContext());
        return false;
    }

    @Override // android.app.job.JobService
    public boolean onStopJob(@NotNull JobParameters jobParameters) {
        Companion.Wwwwwwwwwwwwwwwwwwwwwwwww(getApplicationContext());
        return true;
    }
}
