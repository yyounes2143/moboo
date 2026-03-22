package com.google.android.gms.measurement.internal;

import android.app.BroadcastOptions;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.CollectionUtils;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.measurement.zzqp;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.common.net.HttpHeaders;
import com.google.firebase.messaging.Constants;
import com.mbridge.msdk.MBridgeConstans;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.math.BigInteger;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.nio.channels.OverlappingFileLockException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Deque;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.SortedSet;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzpg implements zzjg {
    private static volatile zzpg zzb;
    private List zzA;
    private long zzB;
    private final Map zzC;
    private final Map zzD;
    private final Map zzE;
    private zzlu zzG;
    private String zzH;
    private zzay zzI;
    private long zzJ;
    @VisibleForTesting
    long zza;
    private final zzht zzc;
    private final zzgz zzd;
    private zzav zze;
    private zzhb zzf;
    private zzok zzg;
    private zzad zzh;
    private final zzpk zzi;
    private zzlp zzj;
    private zznn zzk;
    private final zzou zzl;
    private zzhk zzm;
    private final zzic zzn;
    private boolean zzp;
    private List zzq;
    private int zzs;
    private int zzt;
    private boolean zzu;
    private boolean zzv;
    private boolean zzw;
    private FileLock zzx;
    private FileChannel zzy;
    private List zzz;
    private final AtomicBoolean zzo = new AtomicBoolean(false);
    private final Deque zzr = new LinkedList();
    private final Map zzF = new HashMap();
    private final zzpo zzK = new zzpb(this);

    public zzpg(zzph zzphVar, zzic zzicVar) {
        Preconditions.checkNotNull(zzphVar);
        this.zzn = zzic.zzy(zzphVar.zza, null, null);
        this.zzB = -1L;
        this.zzl = new zzou(this);
        zzpk zzpkVar = new zzpk(this);
        zzpkVar.zzax();
        this.zzi = zzpkVar;
        zzgz zzgzVar = new zzgz(this);
        zzgzVar.zzax();
        this.zzd = zzgzVar;
        zzht zzhtVar = new zzht(this);
        zzhtVar.zzax();
        this.zzc = zzhtVar;
        this.zzC = new HashMap();
        this.zzD = new HashMap();
        this.zzE = new HashMap();
        zzaW().zzj(new zzov(this, zzphVar));
    }

    public static zzpg zza(Context context) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(context.getApplicationContext());
        if (zzb == null) {
            synchronized (zzpg.class) {
                try {
                    if (zzb == null) {
                        zzb = new zzpg((zzph) Preconditions.checkNotNull(new zzph(context)), null);
                    }
                } finally {
                }
            }
        }
        return zzb;
    }

    @VisibleForTesting
    public static final void zzaA(com.google.android.gms.internal.measurement.zzhr zzhrVar, int i, String str) {
        List zza = zzhrVar.zza();
        for (int i2 = 0; i2 < zza.size(); i2++) {
            if ("_err".equals(((com.google.android.gms.internal.measurement.zzhw) zza.get(i2)).zzb())) {
                return;
            }
        }
        com.google.android.gms.internal.measurement.zzhv zzn = com.google.android.gms.internal.measurement.zzhw.zzn();
        zzn.zzb("_err");
        zzn.zzf(i);
        com.google.android.gms.internal.measurement.zzhv zzn2 = com.google.android.gms.internal.measurement.zzhw.zzn();
        zzn2.zzb("_ev");
        zzn2.zzd(str);
        zzhrVar.zzf((com.google.android.gms.internal.measurement.zzhw) zzn.zzbc());
        zzhrVar.zzf((com.google.android.gms.internal.measurement.zzhw) zzn2.zzbc());
    }

    @VisibleForTesting
    public static final void zzaB(com.google.android.gms.internal.measurement.zzhr zzhrVar, @NonNull String str) {
        List zza = zzhrVar.zza();
        for (int i = 0; i < zza.size(); i++) {
            if (str.equals(((com.google.android.gms.internal.measurement.zzhw) zza.get(i)).zzb())) {
                zzhrVar.zzj(i);
                return;
            }
        }
    }

    private final int zzaC(String str, zzan zzanVar) {
        zzjk zzjkVar;
        zzji zzA;
        zzht zzhtVar = this.zzc;
        if (zzhtVar.zzx(str) == null) {
            zzanVar.zzc(zzjk.AD_PERSONALIZATION, zzam.FAILSAFE);
            return 1;
        }
        zzh zzu = zzj().zzu(str);
        if (zzu != null && zze.zzc(zzu.zzaH()).zza() == zzji.POLICY && (zzA = zzhtVar.zzA(str, (zzjkVar = zzjk.AD_PERSONALIZATION))) != zzji.UNINITIALIZED) {
            zzanVar.zzc(zzjkVar, zzam.REMOTE_ENFORCED_DEFAULT);
            if (zzA != zzji.GRANTED) {
                return 1;
            }
            return 0;
        }
        zzjk zzjkVar2 = zzjk.AD_PERSONALIZATION;
        zzanVar.zzc(zzjkVar2, zzam.REMOTE_DEFAULT);
        if (!zzhtVar.zzv(str, zzjkVar2)) {
            return 1;
        }
        return 0;
    }

    private final Map zzaD(com.google.android.gms.internal.measurement.zzhs zzhsVar) {
        HashMap hashMap = new HashMap();
        zzp();
        for (Map.Entry entry : zzpk.zzH(zzhsVar, "gad_").entrySet()) {
            hashMap.put((String) entry.getKey(), String.valueOf(entry.getValue()));
        }
        return hashMap;
    }

    private final zzay zzaE() {
        if (this.zzI == null) {
            this.zzI = new zzoy(this, this.zzn);
        }
        return this.zzI;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    /* renamed from: zzaF */
    public final void zzav() {
        zzaW().zzg();
        if (!this.zzr.isEmpty() && !zzaE().zzc()) {
            long max = Math.max(0L, ((Integer) zzfy.zzaB.zzb(null)).intValue() - (zzaZ().elapsedRealtime() - this.zzJ));
            zzaV().zzk().zzb("Scheduling notify next app runnable, delay in ms", Long.valueOf(max));
            zzaE().zzb(max);
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(40:8|(3:9|10|(5:12|13|(3:15|(1:22)|23)(28:26|27|(21:34|35|(2:37|(3:39|(4:42|(2:48|49)|50|40)|54))|55|56|(3:58|59|(7:248|(4:115|(3:116|117|(3:119|(2:121|122)(2:124|(2:126|127)(1:128))|123)(1:129))|130|(2:226|(3:231|(1:233)(2:235|(3:237|(3:240|(1:242)(1:243)|238)|244)(0))|234)(1:230))(1:132))(1:245)|133|(5:135|(3:(2:140|(2:142|143))|189|190)|191|192|193)(2:194|(5:196|(3:(2:201|(2:203|143))|204|190)|191|192|193)(4:205|(5:207|(3:209|(1:211)|193)(1:225)|212|(2:216|(2:217|(2:219|(2:222|223)(1:221))(1:224)))(0)|193)|192|193))|144|(9:146|(4:149|(2:166|(2:168|169)(1:170))(5:153|(5:156|(2:159|157)|160|161|154)|162|163|164)|165|147)|171|172|(4:175|(3:177|178|179)(1:181)|180|173)|182|183|(1:185)|186)(1:188)|187))(1:249)|63|(3:64|65|(3:67|(2:69|70)(2:72|(2:74|75)(2:76|77))|71)(1:78))|79|(1:247)(1:82)|(1:84)|85|(1:87)(1:246)|88|(5:93|(4:96|(2:98|99)(2:101|(2:103|104)(1:105))|100|94)|106|(1:(1:109)(1:110))|(1:112)(1:113))|(0)(0)|133|(0)(0)|144|(0)(0)|187)|250|(2:252|(23:258|259|35|(0)|55|56|(0)(0)|63|(4:64|65|(0)(0)|71)|79|(0)|247|(0)|85|(0)(0)|88|(6:91|93|(1:94)|106|(0)|(0)(0))|(0)(0)|133|(0)(0)|144|(0)(0)|187))|260|259|35|(0)|55|56|(0)(0)|63|(4:64|65|(0)(0)|71)|79|(0)|247|(0)|85|(0)(0)|88|(0)|(0)(0)|133|(0)(0)|144|(0)(0)|187)|24|25)(1:261))|262|(5:264|(2:266|(3:268|269|270))|271|(1:284)(3:273|(1:275)(1:283)|(2:279|280))|270)|285|286|(2:287|(1:529)(2:289|(2:291|292)))|293|(1:295)(2:526|(1:528))|296|(1:298)(1:525)|299|(1:301)(1:524)|302|(6:305|(1:307)|308|(2:310|311)(1:313)|312|303)|314|315|(2:519|(1:523))(1:319)|320|(1:322)|323|(1:325)|326|(1:334)|335|(10:403|404|(5:407|408|(7:410|(1:414)|(1:435)(5:418|(1:422)|423|(1:434)(1:427)|428)|429|430|431|432)(12:437|438|(10:504|505|441|(3:443|(3:446|(3:449|450|(6:452|453|(1:455)(6:457|(1:500)(1:461)|462|(1:464)(1:499)|465|(3:467|(1:475)|476)(4:477|(3:479|(1:481)|482)(5:485|(1:487)(1:498)|488|(3:490|(1:492)|493)(2:495|(1:497))|494)|483|484))|456|431|432)(5:501|(0)(0)|456|431|432))(1:448)|444)|502)|503|453|(0)(0)|456|431|432)|440|441|(0)|503|453|(0)(0)|456|431|432)|433|405)|509|510|(1:512)|513|(2:516|514)|517|518)(1:337)|338|(1:340)(2:384|(20:386|(1:388)(1:402)|389|(1:391)(1:401)|392|(1:394)(1:400)|395|(1:397)(1:399)|398|342|(6:344|345|(2:350|351)|374|(1:376)(1:377)|351)(1:378)|352|(3:(2:356|357)(1:359)|358|353)|360|361|(1:363)|364|365|366|367))|341|342|(0)(0)|352|(1:353)|360|361|(0)|364|365|366|367) */
    /* JADX WARN: Code restructure failed: missing block: B:468:0x0e1f, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:469:0x0e20, code lost:
        r3.zzu.zzaV().zzb().zzc("Failed to remove unused event metadata. appId", com.google.android.gms.measurement.internal.zzgu.zzl(r1), r0);
     */
    /* JADX WARN: Removed duplicated region for block: B:104:0x039b A[Catch: all -> 0x0103, TryCatch #1 {all -> 0x0103, blocks: (B:3:0x0017, B:5:0x0035, B:8:0x003f, B:9:0x0057, B:12:0x006f, B:15:0x0095, B:17:0x00cc, B:20:0x00dd, B:22:0x00e7, B:230:0x070a, B:27:0x011a, B:30:0x012c, B:32:0x0132, B:47:0x0174, B:49:0x0182, B:52:0x01a2, B:54:0x01a8, B:56:0x01b8, B:58:0x01c6, B:60:0x01d6, B:61:0x01e3, B:62:0x01e6, B:65:0x01fc, B:74:0x022c, B:77:0x0236, B:79:0x0244, B:84:0x028e, B:80:0x025f, B:82:0x026d, B:88:0x0299, B:91:0x02cc, B:92:0x02f6, B:94:0x032f, B:96:0x0335, B:99:0x0341, B:101:0x037a, B:102:0x0395, B:104:0x039b, B:106:0x03ab, B:110:0x03c1, B:107:0x03b5, B:113:0x03c8, B:116:0x03cf, B:117:0x03e7, B:119:0x0400, B:120:0x040c, B:123:0x0418, B:129:0x043b, B:126:0x042a, B:151:0x04bd, B:153:0x04c9, B:156:0x04da, B:158:0x04eb, B:160:0x04f7, B:197:0x05cb, B:199:0x05d1, B:200:0x05dd, B:202:0x05e3, B:204:0x05f3, B:206:0x05fd, B:207:0x0614, B:209:0x061a, B:210:0x0635, B:212:0x063b, B:213:0x0659, B:214:0x0662, B:218:0x068d, B:215:0x0668, B:217:0x067a, B:219:0x0699, B:220:0x06b5, B:222:0x06bb, B:224:0x06ce, B:225:0x06db, B:227:0x06e2, B:229:0x06f6, B:166:0x0517, B:168:0x0523, B:171:0x0536, B:173:0x0547, B:175:0x0553, B:177:0x0563, B:179:0x0572, B:181:0x057e, B:185:0x058d, B:187:0x0597, B:190:0x05a2, B:192:0x05a8, B:194:0x05b8, B:195:0x05c3, B:133:0x0445, B:135:0x0451, B:137:0x045d, B:149:0x04a2, B:141:0x047a, B:144:0x048c, B:146:0x0492, B:148:0x049c, B:36:0x013c, B:38:0x0149, B:40:0x0155, B:42:0x015b, B:46:0x0166, B:233:0x0723, B:235:0x0731, B:237:0x073a, B:248:0x076e, B:238:0x0744, B:240:0x074f, B:242:0x0755, B:245:0x0761, B:247:0x0769, B:249:0x0771, B:250:0x077d, B:252:0x0783, B:254:0x0795, B:255:0x07a0, B:257:0x07a8, B:261:0x07ce, B:263:0x07e8, B:265:0x07fd, B:267:0x0817, B:269:0x082c, B:270:0x083a, B:272:0x0840, B:274:0x0850, B:275:0x0857, B:277:0x0863, B:278:0x086a, B:279:0x086f, B:281:0x08b1, B:283:0x08b7, B:289:0x08de, B:291:0x08e6, B:292:0x08ef, B:294:0x08f5, B:295:0x08fb, B:297:0x0910, B:299:0x0920, B:301:0x0930, B:303:0x0938, B:304:0x093b, B:312:0x09af, B:314:0x09c8, B:316:0x09de, B:318:0x09e3, B:320:0x09e7, B:322:0x09eb, B:324:0x09f5, B:325:0x09fb, B:327:0x09ff, B:329:0x0a05, B:331:0x0a16, B:333:0x0a22, B:339:0x0a4a, B:342:0x0a50, B:284:0x08c5, B:286:0x08cb, B:288:0x08d1, B:268:0x0829, B:264:0x07fa, B:258:0x07ae, B:260:0x07b4), top: B:478:0x0017, inners: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:112:0x03c6  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x03cf A[Catch: all -> 0x0103, TryCatch #1 {all -> 0x0103, blocks: (B:3:0x0017, B:5:0x0035, B:8:0x003f, B:9:0x0057, B:12:0x006f, B:15:0x0095, B:17:0x00cc, B:20:0x00dd, B:22:0x00e7, B:230:0x070a, B:27:0x011a, B:30:0x012c, B:32:0x0132, B:47:0x0174, B:49:0x0182, B:52:0x01a2, B:54:0x01a8, B:56:0x01b8, B:58:0x01c6, B:60:0x01d6, B:61:0x01e3, B:62:0x01e6, B:65:0x01fc, B:74:0x022c, B:77:0x0236, B:79:0x0244, B:84:0x028e, B:80:0x025f, B:82:0x026d, B:88:0x0299, B:91:0x02cc, B:92:0x02f6, B:94:0x032f, B:96:0x0335, B:99:0x0341, B:101:0x037a, B:102:0x0395, B:104:0x039b, B:106:0x03ab, B:110:0x03c1, B:107:0x03b5, B:113:0x03c8, B:116:0x03cf, B:117:0x03e7, B:119:0x0400, B:120:0x040c, B:123:0x0418, B:129:0x043b, B:126:0x042a, B:151:0x04bd, B:153:0x04c9, B:156:0x04da, B:158:0x04eb, B:160:0x04f7, B:197:0x05cb, B:199:0x05d1, B:200:0x05dd, B:202:0x05e3, B:204:0x05f3, B:206:0x05fd, B:207:0x0614, B:209:0x061a, B:210:0x0635, B:212:0x063b, B:213:0x0659, B:214:0x0662, B:218:0x068d, B:215:0x0668, B:217:0x067a, B:219:0x0699, B:220:0x06b5, B:222:0x06bb, B:224:0x06ce, B:225:0x06db, B:227:0x06e2, B:229:0x06f6, B:166:0x0517, B:168:0x0523, B:171:0x0536, B:173:0x0547, B:175:0x0553, B:177:0x0563, B:179:0x0572, B:181:0x057e, B:185:0x058d, B:187:0x0597, B:190:0x05a2, B:192:0x05a8, B:194:0x05b8, B:195:0x05c3, B:133:0x0445, B:135:0x0451, B:137:0x045d, B:149:0x04a2, B:141:0x047a, B:144:0x048c, B:146:0x0492, B:148:0x049c, B:36:0x013c, B:38:0x0149, B:40:0x0155, B:42:0x015b, B:46:0x0166, B:233:0x0723, B:235:0x0731, B:237:0x073a, B:248:0x076e, B:238:0x0744, B:240:0x074f, B:242:0x0755, B:245:0x0761, B:247:0x0769, B:249:0x0771, B:250:0x077d, B:252:0x0783, B:254:0x0795, B:255:0x07a0, B:257:0x07a8, B:261:0x07ce, B:263:0x07e8, B:265:0x07fd, B:267:0x0817, B:269:0x082c, B:270:0x083a, B:272:0x0840, B:274:0x0850, B:275:0x0857, B:277:0x0863, B:278:0x086a, B:279:0x086f, B:281:0x08b1, B:283:0x08b7, B:289:0x08de, B:291:0x08e6, B:292:0x08ef, B:294:0x08f5, B:295:0x08fb, B:297:0x0910, B:299:0x0920, B:301:0x0930, B:303:0x0938, B:304:0x093b, B:312:0x09af, B:314:0x09c8, B:316:0x09de, B:318:0x09e3, B:320:0x09e7, B:322:0x09eb, B:324:0x09f5, B:325:0x09fb, B:327:0x09ff, B:329:0x0a05, B:331:0x0a16, B:333:0x0a22, B:339:0x0a4a, B:342:0x0a50, B:284:0x08c5, B:286:0x08cb, B:288:0x08d1, B:268:0x0829, B:264:0x07fa, B:258:0x07ae, B:260:0x07b4), top: B:478:0x0017, inners: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:117:0x03e7 A[Catch: all -> 0x0103, TryCatch #1 {all -> 0x0103, blocks: (B:3:0x0017, B:5:0x0035, B:8:0x003f, B:9:0x0057, B:12:0x006f, B:15:0x0095, B:17:0x00cc, B:20:0x00dd, B:22:0x00e7, B:230:0x070a, B:27:0x011a, B:30:0x012c, B:32:0x0132, B:47:0x0174, B:49:0x0182, B:52:0x01a2, B:54:0x01a8, B:56:0x01b8, B:58:0x01c6, B:60:0x01d6, B:61:0x01e3, B:62:0x01e6, B:65:0x01fc, B:74:0x022c, B:77:0x0236, B:79:0x0244, B:84:0x028e, B:80:0x025f, B:82:0x026d, B:88:0x0299, B:91:0x02cc, B:92:0x02f6, B:94:0x032f, B:96:0x0335, B:99:0x0341, B:101:0x037a, B:102:0x0395, B:104:0x039b, B:106:0x03ab, B:110:0x03c1, B:107:0x03b5, B:113:0x03c8, B:116:0x03cf, B:117:0x03e7, B:119:0x0400, B:120:0x040c, B:123:0x0418, B:129:0x043b, B:126:0x042a, B:151:0x04bd, B:153:0x04c9, B:156:0x04da, B:158:0x04eb, B:160:0x04f7, B:197:0x05cb, B:199:0x05d1, B:200:0x05dd, B:202:0x05e3, B:204:0x05f3, B:206:0x05fd, B:207:0x0614, B:209:0x061a, B:210:0x0635, B:212:0x063b, B:213:0x0659, B:214:0x0662, B:218:0x068d, B:215:0x0668, B:217:0x067a, B:219:0x0699, B:220:0x06b5, B:222:0x06bb, B:224:0x06ce, B:225:0x06db, B:227:0x06e2, B:229:0x06f6, B:166:0x0517, B:168:0x0523, B:171:0x0536, B:173:0x0547, B:175:0x0553, B:177:0x0563, B:179:0x0572, B:181:0x057e, B:185:0x058d, B:187:0x0597, B:190:0x05a2, B:192:0x05a8, B:194:0x05b8, B:195:0x05c3, B:133:0x0445, B:135:0x0451, B:137:0x045d, B:149:0x04a2, B:141:0x047a, B:144:0x048c, B:146:0x0492, B:148:0x049c, B:36:0x013c, B:38:0x0149, B:40:0x0155, B:42:0x015b, B:46:0x0166, B:233:0x0723, B:235:0x0731, B:237:0x073a, B:248:0x076e, B:238:0x0744, B:240:0x074f, B:242:0x0755, B:245:0x0761, B:247:0x0769, B:249:0x0771, B:250:0x077d, B:252:0x0783, B:254:0x0795, B:255:0x07a0, B:257:0x07a8, B:261:0x07ce, B:263:0x07e8, B:265:0x07fd, B:267:0x0817, B:269:0x082c, B:270:0x083a, B:272:0x0840, B:274:0x0850, B:275:0x0857, B:277:0x0863, B:278:0x086a, B:279:0x086f, B:281:0x08b1, B:283:0x08b7, B:289:0x08de, B:291:0x08e6, B:292:0x08ef, B:294:0x08f5, B:295:0x08fb, B:297:0x0910, B:299:0x0920, B:301:0x0930, B:303:0x0938, B:304:0x093b, B:312:0x09af, B:314:0x09c8, B:316:0x09de, B:318:0x09e3, B:320:0x09e7, B:322:0x09eb, B:324:0x09f5, B:325:0x09fb, B:327:0x09ff, B:329:0x0a05, B:331:0x0a16, B:333:0x0a22, B:339:0x0a4a, B:342:0x0a50, B:284:0x08c5, B:286:0x08cb, B:288:0x08d1, B:268:0x0829, B:264:0x07fa, B:258:0x07ae, B:260:0x07b4), top: B:478:0x0017, inners: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0400 A[Catch: all -> 0x0103, TryCatch #1 {all -> 0x0103, blocks: (B:3:0x0017, B:5:0x0035, B:8:0x003f, B:9:0x0057, B:12:0x006f, B:15:0x0095, B:17:0x00cc, B:20:0x00dd, B:22:0x00e7, B:230:0x070a, B:27:0x011a, B:30:0x012c, B:32:0x0132, B:47:0x0174, B:49:0x0182, B:52:0x01a2, B:54:0x01a8, B:56:0x01b8, B:58:0x01c6, B:60:0x01d6, B:61:0x01e3, B:62:0x01e6, B:65:0x01fc, B:74:0x022c, B:77:0x0236, B:79:0x0244, B:84:0x028e, B:80:0x025f, B:82:0x026d, B:88:0x0299, B:91:0x02cc, B:92:0x02f6, B:94:0x032f, B:96:0x0335, B:99:0x0341, B:101:0x037a, B:102:0x0395, B:104:0x039b, B:106:0x03ab, B:110:0x03c1, B:107:0x03b5, B:113:0x03c8, B:116:0x03cf, B:117:0x03e7, B:119:0x0400, B:120:0x040c, B:123:0x0418, B:129:0x043b, B:126:0x042a, B:151:0x04bd, B:153:0x04c9, B:156:0x04da, B:158:0x04eb, B:160:0x04f7, B:197:0x05cb, B:199:0x05d1, B:200:0x05dd, B:202:0x05e3, B:204:0x05f3, B:206:0x05fd, B:207:0x0614, B:209:0x061a, B:210:0x0635, B:212:0x063b, B:213:0x0659, B:214:0x0662, B:218:0x068d, B:215:0x0668, B:217:0x067a, B:219:0x0699, B:220:0x06b5, B:222:0x06bb, B:224:0x06ce, B:225:0x06db, B:227:0x06e2, B:229:0x06f6, B:166:0x0517, B:168:0x0523, B:171:0x0536, B:173:0x0547, B:175:0x0553, B:177:0x0563, B:179:0x0572, B:181:0x057e, B:185:0x058d, B:187:0x0597, B:190:0x05a2, B:192:0x05a8, B:194:0x05b8, B:195:0x05c3, B:133:0x0445, B:135:0x0451, B:137:0x045d, B:149:0x04a2, B:141:0x047a, B:144:0x048c, B:146:0x0492, B:148:0x049c, B:36:0x013c, B:38:0x0149, B:40:0x0155, B:42:0x015b, B:46:0x0166, B:233:0x0723, B:235:0x0731, B:237:0x073a, B:248:0x076e, B:238:0x0744, B:240:0x074f, B:242:0x0755, B:245:0x0761, B:247:0x0769, B:249:0x0771, B:250:0x077d, B:252:0x0783, B:254:0x0795, B:255:0x07a0, B:257:0x07a8, B:261:0x07ce, B:263:0x07e8, B:265:0x07fd, B:267:0x0817, B:269:0x082c, B:270:0x083a, B:272:0x0840, B:274:0x0850, B:275:0x0857, B:277:0x0863, B:278:0x086a, B:279:0x086f, B:281:0x08b1, B:283:0x08b7, B:289:0x08de, B:291:0x08e6, B:292:0x08ef, B:294:0x08f5, B:295:0x08fb, B:297:0x0910, B:299:0x0920, B:301:0x0930, B:303:0x0938, B:304:0x093b, B:312:0x09af, B:314:0x09c8, B:316:0x09de, B:318:0x09e3, B:320:0x09e7, B:322:0x09eb, B:324:0x09f5, B:325:0x09fb, B:327:0x09ff, B:329:0x0a05, B:331:0x0a16, B:333:0x0a22, B:339:0x0a4a, B:342:0x0a50, B:284:0x08c5, B:286:0x08cb, B:288:0x08d1, B:268:0x0829, B:264:0x07fa, B:258:0x07ae, B:260:0x07b4), top: B:478:0x0017, inners: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:150:0x04bb  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x04c9 A[Catch: all -> 0x0103, TryCatch #1 {all -> 0x0103, blocks: (B:3:0x0017, B:5:0x0035, B:8:0x003f, B:9:0x0057, B:12:0x006f, B:15:0x0095, B:17:0x00cc, B:20:0x00dd, B:22:0x00e7, B:230:0x070a, B:27:0x011a, B:30:0x012c, B:32:0x0132, B:47:0x0174, B:49:0x0182, B:52:0x01a2, B:54:0x01a8, B:56:0x01b8, B:58:0x01c6, B:60:0x01d6, B:61:0x01e3, B:62:0x01e6, B:65:0x01fc, B:74:0x022c, B:77:0x0236, B:79:0x0244, B:84:0x028e, B:80:0x025f, B:82:0x026d, B:88:0x0299, B:91:0x02cc, B:92:0x02f6, B:94:0x032f, B:96:0x0335, B:99:0x0341, B:101:0x037a, B:102:0x0395, B:104:0x039b, B:106:0x03ab, B:110:0x03c1, B:107:0x03b5, B:113:0x03c8, B:116:0x03cf, B:117:0x03e7, B:119:0x0400, B:120:0x040c, B:123:0x0418, B:129:0x043b, B:126:0x042a, B:151:0x04bd, B:153:0x04c9, B:156:0x04da, B:158:0x04eb, B:160:0x04f7, B:197:0x05cb, B:199:0x05d1, B:200:0x05dd, B:202:0x05e3, B:204:0x05f3, B:206:0x05fd, B:207:0x0614, B:209:0x061a, B:210:0x0635, B:212:0x063b, B:213:0x0659, B:214:0x0662, B:218:0x068d, B:215:0x0668, B:217:0x067a, B:219:0x0699, B:220:0x06b5, B:222:0x06bb, B:224:0x06ce, B:225:0x06db, B:227:0x06e2, B:229:0x06f6, B:166:0x0517, B:168:0x0523, B:171:0x0536, B:173:0x0547, B:175:0x0553, B:177:0x0563, B:179:0x0572, B:181:0x057e, B:185:0x058d, B:187:0x0597, B:190:0x05a2, B:192:0x05a8, B:194:0x05b8, B:195:0x05c3, B:133:0x0445, B:135:0x0451, B:137:0x045d, B:149:0x04a2, B:141:0x047a, B:144:0x048c, B:146:0x0492, B:148:0x049c, B:36:0x013c, B:38:0x0149, B:40:0x0155, B:42:0x015b, B:46:0x0166, B:233:0x0723, B:235:0x0731, B:237:0x073a, B:248:0x076e, B:238:0x0744, B:240:0x074f, B:242:0x0755, B:245:0x0761, B:247:0x0769, B:249:0x0771, B:250:0x077d, B:252:0x0783, B:254:0x0795, B:255:0x07a0, B:257:0x07a8, B:261:0x07ce, B:263:0x07e8, B:265:0x07fd, B:267:0x0817, B:269:0x082c, B:270:0x083a, B:272:0x0840, B:274:0x0850, B:275:0x0857, B:277:0x0863, B:278:0x086a, B:279:0x086f, B:281:0x08b1, B:283:0x08b7, B:289:0x08de, B:291:0x08e6, B:292:0x08ef, B:294:0x08f5, B:295:0x08fb, B:297:0x0910, B:299:0x0920, B:301:0x0930, B:303:0x0938, B:304:0x093b, B:312:0x09af, B:314:0x09c8, B:316:0x09de, B:318:0x09e3, B:320:0x09e7, B:322:0x09eb, B:324:0x09f5, B:325:0x09fb, B:327:0x09ff, B:329:0x0a05, B:331:0x0a16, B:333:0x0a22, B:339:0x0a4a, B:342:0x0a50, B:284:0x08c5, B:286:0x08cb, B:288:0x08d1, B:268:0x0829, B:264:0x07fa, B:258:0x07ae, B:260:0x07b4), top: B:478:0x0017, inners: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:166:0x0517 A[Catch: all -> 0x0103, TryCatch #1 {all -> 0x0103, blocks: (B:3:0x0017, B:5:0x0035, B:8:0x003f, B:9:0x0057, B:12:0x006f, B:15:0x0095, B:17:0x00cc, B:20:0x00dd, B:22:0x00e7, B:230:0x070a, B:27:0x011a, B:30:0x012c, B:32:0x0132, B:47:0x0174, B:49:0x0182, B:52:0x01a2, B:54:0x01a8, B:56:0x01b8, B:58:0x01c6, B:60:0x01d6, B:61:0x01e3, B:62:0x01e6, B:65:0x01fc, B:74:0x022c, B:77:0x0236, B:79:0x0244, B:84:0x028e, B:80:0x025f, B:82:0x026d, B:88:0x0299, B:91:0x02cc, B:92:0x02f6, B:94:0x032f, B:96:0x0335, B:99:0x0341, B:101:0x037a, B:102:0x0395, B:104:0x039b, B:106:0x03ab, B:110:0x03c1, B:107:0x03b5, B:113:0x03c8, B:116:0x03cf, B:117:0x03e7, B:119:0x0400, B:120:0x040c, B:123:0x0418, B:129:0x043b, B:126:0x042a, B:151:0x04bd, B:153:0x04c9, B:156:0x04da, B:158:0x04eb, B:160:0x04f7, B:197:0x05cb, B:199:0x05d1, B:200:0x05dd, B:202:0x05e3, B:204:0x05f3, B:206:0x05fd, B:207:0x0614, B:209:0x061a, B:210:0x0635, B:212:0x063b, B:213:0x0659, B:214:0x0662, B:218:0x068d, B:215:0x0668, B:217:0x067a, B:219:0x0699, B:220:0x06b5, B:222:0x06bb, B:224:0x06ce, B:225:0x06db, B:227:0x06e2, B:229:0x06f6, B:166:0x0517, B:168:0x0523, B:171:0x0536, B:173:0x0547, B:175:0x0553, B:177:0x0563, B:179:0x0572, B:181:0x057e, B:185:0x058d, B:187:0x0597, B:190:0x05a2, B:192:0x05a8, B:194:0x05b8, B:195:0x05c3, B:133:0x0445, B:135:0x0451, B:137:0x045d, B:149:0x04a2, B:141:0x047a, B:144:0x048c, B:146:0x0492, B:148:0x049c, B:36:0x013c, B:38:0x0149, B:40:0x0155, B:42:0x015b, B:46:0x0166, B:233:0x0723, B:235:0x0731, B:237:0x073a, B:248:0x076e, B:238:0x0744, B:240:0x074f, B:242:0x0755, B:245:0x0761, B:247:0x0769, B:249:0x0771, B:250:0x077d, B:252:0x0783, B:254:0x0795, B:255:0x07a0, B:257:0x07a8, B:261:0x07ce, B:263:0x07e8, B:265:0x07fd, B:267:0x0817, B:269:0x082c, B:270:0x083a, B:272:0x0840, B:274:0x0850, B:275:0x0857, B:277:0x0863, B:278:0x086a, B:279:0x086f, B:281:0x08b1, B:283:0x08b7, B:289:0x08de, B:291:0x08e6, B:292:0x08ef, B:294:0x08f5, B:295:0x08fb, B:297:0x0910, B:299:0x0920, B:301:0x0930, B:303:0x0938, B:304:0x093b, B:312:0x09af, B:314:0x09c8, B:316:0x09de, B:318:0x09e3, B:320:0x09e7, B:322:0x09eb, B:324:0x09f5, B:325:0x09fb, B:327:0x09ff, B:329:0x0a05, B:331:0x0a16, B:333:0x0a22, B:339:0x0a4a, B:342:0x0a50, B:284:0x08c5, B:286:0x08cb, B:288:0x08d1, B:268:0x0829, B:264:0x07fa, B:258:0x07ae, B:260:0x07b4), top: B:478:0x0017, inners: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:199:0x05d1 A[Catch: all -> 0x0103, TryCatch #1 {all -> 0x0103, blocks: (B:3:0x0017, B:5:0x0035, B:8:0x003f, B:9:0x0057, B:12:0x006f, B:15:0x0095, B:17:0x00cc, B:20:0x00dd, B:22:0x00e7, B:230:0x070a, B:27:0x011a, B:30:0x012c, B:32:0x0132, B:47:0x0174, B:49:0x0182, B:52:0x01a2, B:54:0x01a8, B:56:0x01b8, B:58:0x01c6, B:60:0x01d6, B:61:0x01e3, B:62:0x01e6, B:65:0x01fc, B:74:0x022c, B:77:0x0236, B:79:0x0244, B:84:0x028e, B:80:0x025f, B:82:0x026d, B:88:0x0299, B:91:0x02cc, B:92:0x02f6, B:94:0x032f, B:96:0x0335, B:99:0x0341, B:101:0x037a, B:102:0x0395, B:104:0x039b, B:106:0x03ab, B:110:0x03c1, B:107:0x03b5, B:113:0x03c8, B:116:0x03cf, B:117:0x03e7, B:119:0x0400, B:120:0x040c, B:123:0x0418, B:129:0x043b, B:126:0x042a, B:151:0x04bd, B:153:0x04c9, B:156:0x04da, B:158:0x04eb, B:160:0x04f7, B:197:0x05cb, B:199:0x05d1, B:200:0x05dd, B:202:0x05e3, B:204:0x05f3, B:206:0x05fd, B:207:0x0614, B:209:0x061a, B:210:0x0635, B:212:0x063b, B:213:0x0659, B:214:0x0662, B:218:0x068d, B:215:0x0668, B:217:0x067a, B:219:0x0699, B:220:0x06b5, B:222:0x06bb, B:224:0x06ce, B:225:0x06db, B:227:0x06e2, B:229:0x06f6, B:166:0x0517, B:168:0x0523, B:171:0x0536, B:173:0x0547, B:175:0x0553, B:177:0x0563, B:179:0x0572, B:181:0x057e, B:185:0x058d, B:187:0x0597, B:190:0x05a2, B:192:0x05a8, B:194:0x05b8, B:195:0x05c3, B:133:0x0445, B:135:0x0451, B:137:0x045d, B:149:0x04a2, B:141:0x047a, B:144:0x048c, B:146:0x0492, B:148:0x049c, B:36:0x013c, B:38:0x0149, B:40:0x0155, B:42:0x015b, B:46:0x0166, B:233:0x0723, B:235:0x0731, B:237:0x073a, B:248:0x076e, B:238:0x0744, B:240:0x074f, B:242:0x0755, B:245:0x0761, B:247:0x0769, B:249:0x0771, B:250:0x077d, B:252:0x0783, B:254:0x0795, B:255:0x07a0, B:257:0x07a8, B:261:0x07ce, B:263:0x07e8, B:265:0x07fd, B:267:0x0817, B:269:0x082c, B:270:0x083a, B:272:0x0840, B:274:0x0850, B:275:0x0857, B:277:0x0863, B:278:0x086a, B:279:0x086f, B:281:0x08b1, B:283:0x08b7, B:289:0x08de, B:291:0x08e6, B:292:0x08ef, B:294:0x08f5, B:295:0x08fb, B:297:0x0910, B:299:0x0920, B:301:0x0930, B:303:0x0938, B:304:0x093b, B:312:0x09af, B:314:0x09c8, B:316:0x09de, B:318:0x09e3, B:320:0x09e7, B:322:0x09eb, B:324:0x09f5, B:325:0x09fb, B:327:0x09ff, B:329:0x0a05, B:331:0x0a16, B:333:0x0a22, B:339:0x0a4a, B:342:0x0a50, B:284:0x08c5, B:286:0x08cb, B:288:0x08d1, B:268:0x0829, B:264:0x07fa, B:258:0x07ae, B:260:0x07b4), top: B:478:0x0017, inners: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:228:0x06ee  */
    /* JADX WARN: Removed duplicated region for block: B:346:0x0a86 A[Catch: all -> 0x0ab7, TryCatch #2 {all -> 0x0ab7, blocks: (B:306:0x097d, B:307:0x0990, B:309:0x0996, B:406:0x0c5f, B:337:0x0a34, B:344:0x0a64, B:346:0x0a86, B:347:0x0a8e, B:349:0x0a94, B:351:0x0aa6, B:359:0x0ac1, B:361:0x0ad5, B:363:0x0afe, B:365:0x0b0a, B:367:0x0b1e, B:369:0x0b5f, B:375:0x0b79, B:377:0x0b84, B:379:0x0b88, B:381:0x0b8c, B:383:0x0b90, B:384:0x0b9c, B:385:0x0ba1, B:387:0x0ba7, B:389:0x0bbd, B:390:0x0bc2, B:405:0x0c5a, B:391:0x0bdb, B:393:0x0bdf, B:397:0x0c08, B:399:0x0c2c, B:400:0x0c33, B:404:0x0c4d, B:394:0x0bef, B:407:0x0c6d, B:409:0x0c7b, B:410:0x0c81, B:411:0x0c89, B:413:0x0c8f, B:416:0x0ca8, B:418:0x0cb8, B:439:0x0d36, B:420:0x0cd1, B:422:0x0cd7, B:424:0x0cdf, B:426:0x0ce6, B:432:0x0cf4, B:434:0x0cfb, B:436:0x0d27, B:438:0x0d2e, B:437:0x0d2b, B:433:0x0cf8, B:425:0x0ce3), top: B:480:0x097d }] */
    /* JADX WARN: Removed duplicated region for block: B:361:0x0ad5 A[Catch: all -> 0x0ab7, TryCatch #2 {all -> 0x0ab7, blocks: (B:306:0x097d, B:307:0x0990, B:309:0x0996, B:406:0x0c5f, B:337:0x0a34, B:344:0x0a64, B:346:0x0a86, B:347:0x0a8e, B:349:0x0a94, B:351:0x0aa6, B:359:0x0ac1, B:361:0x0ad5, B:363:0x0afe, B:365:0x0b0a, B:367:0x0b1e, B:369:0x0b5f, B:375:0x0b79, B:377:0x0b84, B:379:0x0b88, B:381:0x0b8c, B:383:0x0b90, B:384:0x0b9c, B:385:0x0ba1, B:387:0x0ba7, B:389:0x0bbd, B:390:0x0bc2, B:405:0x0c5a, B:391:0x0bdb, B:393:0x0bdf, B:397:0x0c08, B:399:0x0c2c, B:400:0x0c33, B:404:0x0c4d, B:394:0x0bef, B:407:0x0c6d, B:409:0x0c7b, B:410:0x0c81, B:411:0x0c89, B:413:0x0c8f, B:416:0x0ca8, B:418:0x0cb8, B:439:0x0d36, B:420:0x0cd1, B:422:0x0cd7, B:424:0x0cdf, B:426:0x0ce6, B:432:0x0cf4, B:434:0x0cfb, B:436:0x0d27, B:438:0x0d2e, B:437:0x0d2b, B:433:0x0cf8, B:425:0x0ce3), top: B:480:0x097d }] */
    /* JADX WARN: Removed duplicated region for block: B:363:0x0afe A[Catch: all -> 0x0ab7, TryCatch #2 {all -> 0x0ab7, blocks: (B:306:0x097d, B:307:0x0990, B:309:0x0996, B:406:0x0c5f, B:337:0x0a34, B:344:0x0a64, B:346:0x0a86, B:347:0x0a8e, B:349:0x0a94, B:351:0x0aa6, B:359:0x0ac1, B:361:0x0ad5, B:363:0x0afe, B:365:0x0b0a, B:367:0x0b1e, B:369:0x0b5f, B:375:0x0b79, B:377:0x0b84, B:379:0x0b88, B:381:0x0b8c, B:383:0x0b90, B:384:0x0b9c, B:385:0x0ba1, B:387:0x0ba7, B:389:0x0bbd, B:390:0x0bc2, B:405:0x0c5a, B:391:0x0bdb, B:393:0x0bdf, B:397:0x0c08, B:399:0x0c2c, B:400:0x0c33, B:404:0x0c4d, B:394:0x0bef, B:407:0x0c6d, B:409:0x0c7b, B:410:0x0c81, B:411:0x0c89, B:413:0x0c8f, B:416:0x0ca8, B:418:0x0cb8, B:439:0x0d36, B:420:0x0cd1, B:422:0x0cd7, B:424:0x0cdf, B:426:0x0ce6, B:432:0x0cf4, B:434:0x0cfb, B:436:0x0d27, B:438:0x0d2e, B:437:0x0d2b, B:433:0x0cf8, B:425:0x0ce3), top: B:480:0x097d }] */
    /* JADX WARN: Removed duplicated region for block: B:441:0x0d3c  */
    /* JADX WARN: Removed duplicated region for block: B:455:0x0d9e  */
    /* JADX WARN: Removed duplicated region for block: B:459:0x0dbd  */
    /* JADX WARN: Removed duplicated region for block: B:464:0x0df2 A[Catch: all -> 0x0d62, TryCatch #0 {all -> 0x0d62, blocks: (B:442:0x0d3e, B:444:0x0d53, B:447:0x0d5a, B:454:0x0d8e, B:456:0x0da0, B:457:0x0db7, B:460:0x0dbf, B:461:0x0dc4, B:462:0x0dd6, B:464:0x0df2, B:465:0x0e0d, B:466:0x0e15, B:470:0x0e33, B:469:0x0e20, B:450:0x0d65, B:452:0x0d71, B:453:0x0d77, B:471:0x0e3d), top: B:477:0x0033, inners: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:492:0x0293 A[EDGE_INSN: B:492:0x0293->B:85:0x0293 ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0182 A[Catch: all -> 0x0103, TryCatch #1 {all -> 0x0103, blocks: (B:3:0x0017, B:5:0x0035, B:8:0x003f, B:9:0x0057, B:12:0x006f, B:15:0x0095, B:17:0x00cc, B:20:0x00dd, B:22:0x00e7, B:230:0x070a, B:27:0x011a, B:30:0x012c, B:32:0x0132, B:47:0x0174, B:49:0x0182, B:52:0x01a2, B:54:0x01a8, B:56:0x01b8, B:58:0x01c6, B:60:0x01d6, B:61:0x01e3, B:62:0x01e6, B:65:0x01fc, B:74:0x022c, B:77:0x0236, B:79:0x0244, B:84:0x028e, B:80:0x025f, B:82:0x026d, B:88:0x0299, B:91:0x02cc, B:92:0x02f6, B:94:0x032f, B:96:0x0335, B:99:0x0341, B:101:0x037a, B:102:0x0395, B:104:0x039b, B:106:0x03ab, B:110:0x03c1, B:107:0x03b5, B:113:0x03c8, B:116:0x03cf, B:117:0x03e7, B:119:0x0400, B:120:0x040c, B:123:0x0418, B:129:0x043b, B:126:0x042a, B:151:0x04bd, B:153:0x04c9, B:156:0x04da, B:158:0x04eb, B:160:0x04f7, B:197:0x05cb, B:199:0x05d1, B:200:0x05dd, B:202:0x05e3, B:204:0x05f3, B:206:0x05fd, B:207:0x0614, B:209:0x061a, B:210:0x0635, B:212:0x063b, B:213:0x0659, B:214:0x0662, B:218:0x068d, B:215:0x0668, B:217:0x067a, B:219:0x0699, B:220:0x06b5, B:222:0x06bb, B:224:0x06ce, B:225:0x06db, B:227:0x06e2, B:229:0x06f6, B:166:0x0517, B:168:0x0523, B:171:0x0536, B:173:0x0547, B:175:0x0553, B:177:0x0563, B:179:0x0572, B:181:0x057e, B:185:0x058d, B:187:0x0597, B:190:0x05a2, B:192:0x05a8, B:194:0x05b8, B:195:0x05c3, B:133:0x0445, B:135:0x0451, B:137:0x045d, B:149:0x04a2, B:141:0x047a, B:144:0x048c, B:146:0x0492, B:148:0x049c, B:36:0x013c, B:38:0x0149, B:40:0x0155, B:42:0x015b, B:46:0x0166, B:233:0x0723, B:235:0x0731, B:237:0x073a, B:248:0x076e, B:238:0x0744, B:240:0x074f, B:242:0x0755, B:245:0x0761, B:247:0x0769, B:249:0x0771, B:250:0x077d, B:252:0x0783, B:254:0x0795, B:255:0x07a0, B:257:0x07a8, B:261:0x07ce, B:263:0x07e8, B:265:0x07fd, B:267:0x0817, B:269:0x082c, B:270:0x083a, B:272:0x0840, B:274:0x0850, B:275:0x0857, B:277:0x0863, B:278:0x086a, B:279:0x086f, B:281:0x08b1, B:283:0x08b7, B:289:0x08de, B:291:0x08e6, B:292:0x08ef, B:294:0x08f5, B:295:0x08fb, B:297:0x0910, B:299:0x0920, B:301:0x0930, B:303:0x0938, B:304:0x093b, B:312:0x09af, B:314:0x09c8, B:316:0x09de, B:318:0x09e3, B:320:0x09e7, B:322:0x09eb, B:324:0x09f5, B:325:0x09fb, B:327:0x09ff, B:329:0x0a05, B:331:0x0a16, B:333:0x0a22, B:339:0x0a4a, B:342:0x0a50, B:284:0x08c5, B:286:0x08cb, B:288:0x08d1, B:268:0x0829, B:264:0x07fa, B:258:0x07ae, B:260:0x07b4), top: B:478:0x0017, inners: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x01fc A[Catch: all -> 0x0103, TRY_ENTER, TRY_LEAVE, TryCatch #1 {all -> 0x0103, blocks: (B:3:0x0017, B:5:0x0035, B:8:0x003f, B:9:0x0057, B:12:0x006f, B:15:0x0095, B:17:0x00cc, B:20:0x00dd, B:22:0x00e7, B:230:0x070a, B:27:0x011a, B:30:0x012c, B:32:0x0132, B:47:0x0174, B:49:0x0182, B:52:0x01a2, B:54:0x01a8, B:56:0x01b8, B:58:0x01c6, B:60:0x01d6, B:61:0x01e3, B:62:0x01e6, B:65:0x01fc, B:74:0x022c, B:77:0x0236, B:79:0x0244, B:84:0x028e, B:80:0x025f, B:82:0x026d, B:88:0x0299, B:91:0x02cc, B:92:0x02f6, B:94:0x032f, B:96:0x0335, B:99:0x0341, B:101:0x037a, B:102:0x0395, B:104:0x039b, B:106:0x03ab, B:110:0x03c1, B:107:0x03b5, B:113:0x03c8, B:116:0x03cf, B:117:0x03e7, B:119:0x0400, B:120:0x040c, B:123:0x0418, B:129:0x043b, B:126:0x042a, B:151:0x04bd, B:153:0x04c9, B:156:0x04da, B:158:0x04eb, B:160:0x04f7, B:197:0x05cb, B:199:0x05d1, B:200:0x05dd, B:202:0x05e3, B:204:0x05f3, B:206:0x05fd, B:207:0x0614, B:209:0x061a, B:210:0x0635, B:212:0x063b, B:213:0x0659, B:214:0x0662, B:218:0x068d, B:215:0x0668, B:217:0x067a, B:219:0x0699, B:220:0x06b5, B:222:0x06bb, B:224:0x06ce, B:225:0x06db, B:227:0x06e2, B:229:0x06f6, B:166:0x0517, B:168:0x0523, B:171:0x0536, B:173:0x0547, B:175:0x0553, B:177:0x0563, B:179:0x0572, B:181:0x057e, B:185:0x058d, B:187:0x0597, B:190:0x05a2, B:192:0x05a8, B:194:0x05b8, B:195:0x05c3, B:133:0x0445, B:135:0x0451, B:137:0x045d, B:149:0x04a2, B:141:0x047a, B:144:0x048c, B:146:0x0492, B:148:0x049c, B:36:0x013c, B:38:0x0149, B:40:0x0155, B:42:0x015b, B:46:0x0166, B:233:0x0723, B:235:0x0731, B:237:0x073a, B:248:0x076e, B:238:0x0744, B:240:0x074f, B:242:0x0755, B:245:0x0761, B:247:0x0769, B:249:0x0771, B:250:0x077d, B:252:0x0783, B:254:0x0795, B:255:0x07a0, B:257:0x07a8, B:261:0x07ce, B:263:0x07e8, B:265:0x07fd, B:267:0x0817, B:269:0x082c, B:270:0x083a, B:272:0x0840, B:274:0x0850, B:275:0x0857, B:277:0x0863, B:278:0x086a, B:279:0x086f, B:281:0x08b1, B:283:0x08b7, B:289:0x08de, B:291:0x08e6, B:292:0x08ef, B:294:0x08f5, B:295:0x08fb, B:297:0x0910, B:299:0x0920, B:301:0x0930, B:303:0x0938, B:304:0x093b, B:312:0x09af, B:314:0x09c8, B:316:0x09de, B:318:0x09e3, B:320:0x09e7, B:322:0x09eb, B:324:0x09f5, B:325:0x09fb, B:327:0x09ff, B:329:0x0a05, B:331:0x0a16, B:333:0x0a22, B:339:0x0a4a, B:342:0x0a50, B:284:0x08c5, B:286:0x08cb, B:288:0x08d1, B:268:0x0829, B:264:0x07fa, B:258:0x07ae, B:260:0x07b4), top: B:478:0x0017, inners: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0229  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0236 A[Catch: all -> 0x0103, TRY_ENTER, TryCatch #1 {all -> 0x0103, blocks: (B:3:0x0017, B:5:0x0035, B:8:0x003f, B:9:0x0057, B:12:0x006f, B:15:0x0095, B:17:0x00cc, B:20:0x00dd, B:22:0x00e7, B:230:0x070a, B:27:0x011a, B:30:0x012c, B:32:0x0132, B:47:0x0174, B:49:0x0182, B:52:0x01a2, B:54:0x01a8, B:56:0x01b8, B:58:0x01c6, B:60:0x01d6, B:61:0x01e3, B:62:0x01e6, B:65:0x01fc, B:74:0x022c, B:77:0x0236, B:79:0x0244, B:84:0x028e, B:80:0x025f, B:82:0x026d, B:88:0x0299, B:91:0x02cc, B:92:0x02f6, B:94:0x032f, B:96:0x0335, B:99:0x0341, B:101:0x037a, B:102:0x0395, B:104:0x039b, B:106:0x03ab, B:110:0x03c1, B:107:0x03b5, B:113:0x03c8, B:116:0x03cf, B:117:0x03e7, B:119:0x0400, B:120:0x040c, B:123:0x0418, B:129:0x043b, B:126:0x042a, B:151:0x04bd, B:153:0x04c9, B:156:0x04da, B:158:0x04eb, B:160:0x04f7, B:197:0x05cb, B:199:0x05d1, B:200:0x05dd, B:202:0x05e3, B:204:0x05f3, B:206:0x05fd, B:207:0x0614, B:209:0x061a, B:210:0x0635, B:212:0x063b, B:213:0x0659, B:214:0x0662, B:218:0x068d, B:215:0x0668, B:217:0x067a, B:219:0x0699, B:220:0x06b5, B:222:0x06bb, B:224:0x06ce, B:225:0x06db, B:227:0x06e2, B:229:0x06f6, B:166:0x0517, B:168:0x0523, B:171:0x0536, B:173:0x0547, B:175:0x0553, B:177:0x0563, B:179:0x0572, B:181:0x057e, B:185:0x058d, B:187:0x0597, B:190:0x05a2, B:192:0x05a8, B:194:0x05b8, B:195:0x05c3, B:133:0x0445, B:135:0x0451, B:137:0x045d, B:149:0x04a2, B:141:0x047a, B:144:0x048c, B:146:0x0492, B:148:0x049c, B:36:0x013c, B:38:0x0149, B:40:0x0155, B:42:0x015b, B:46:0x0166, B:233:0x0723, B:235:0x0731, B:237:0x073a, B:248:0x076e, B:238:0x0744, B:240:0x074f, B:242:0x0755, B:245:0x0761, B:247:0x0769, B:249:0x0771, B:250:0x077d, B:252:0x0783, B:254:0x0795, B:255:0x07a0, B:257:0x07a8, B:261:0x07ce, B:263:0x07e8, B:265:0x07fd, B:267:0x0817, B:269:0x082c, B:270:0x083a, B:272:0x0840, B:274:0x0850, B:275:0x0857, B:277:0x0863, B:278:0x086a, B:279:0x086f, B:281:0x08b1, B:283:0x08b7, B:289:0x08de, B:291:0x08e6, B:292:0x08ef, B:294:0x08f5, B:295:0x08fb, B:297:0x0910, B:299:0x0920, B:301:0x0930, B:303:0x0938, B:304:0x093b, B:312:0x09af, B:314:0x09c8, B:316:0x09de, B:318:0x09e3, B:320:0x09e7, B:322:0x09eb, B:324:0x09f5, B:325:0x09fb, B:327:0x09ff, B:329:0x0a05, B:331:0x0a16, B:333:0x0a22, B:339:0x0a4a, B:342:0x0a50, B:284:0x08c5, B:286:0x08cb, B:288:0x08d1, B:268:0x0829, B:264:0x07fa, B:258:0x07ae, B:260:0x07b4), top: B:478:0x0017, inners: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0297 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x02cc A[Catch: all -> 0x0103, TryCatch #1 {all -> 0x0103, blocks: (B:3:0x0017, B:5:0x0035, B:8:0x003f, B:9:0x0057, B:12:0x006f, B:15:0x0095, B:17:0x00cc, B:20:0x00dd, B:22:0x00e7, B:230:0x070a, B:27:0x011a, B:30:0x012c, B:32:0x0132, B:47:0x0174, B:49:0x0182, B:52:0x01a2, B:54:0x01a8, B:56:0x01b8, B:58:0x01c6, B:60:0x01d6, B:61:0x01e3, B:62:0x01e6, B:65:0x01fc, B:74:0x022c, B:77:0x0236, B:79:0x0244, B:84:0x028e, B:80:0x025f, B:82:0x026d, B:88:0x0299, B:91:0x02cc, B:92:0x02f6, B:94:0x032f, B:96:0x0335, B:99:0x0341, B:101:0x037a, B:102:0x0395, B:104:0x039b, B:106:0x03ab, B:110:0x03c1, B:107:0x03b5, B:113:0x03c8, B:116:0x03cf, B:117:0x03e7, B:119:0x0400, B:120:0x040c, B:123:0x0418, B:129:0x043b, B:126:0x042a, B:151:0x04bd, B:153:0x04c9, B:156:0x04da, B:158:0x04eb, B:160:0x04f7, B:197:0x05cb, B:199:0x05d1, B:200:0x05dd, B:202:0x05e3, B:204:0x05f3, B:206:0x05fd, B:207:0x0614, B:209:0x061a, B:210:0x0635, B:212:0x063b, B:213:0x0659, B:214:0x0662, B:218:0x068d, B:215:0x0668, B:217:0x067a, B:219:0x0699, B:220:0x06b5, B:222:0x06bb, B:224:0x06ce, B:225:0x06db, B:227:0x06e2, B:229:0x06f6, B:166:0x0517, B:168:0x0523, B:171:0x0536, B:173:0x0547, B:175:0x0553, B:177:0x0563, B:179:0x0572, B:181:0x057e, B:185:0x058d, B:187:0x0597, B:190:0x05a2, B:192:0x05a8, B:194:0x05b8, B:195:0x05c3, B:133:0x0445, B:135:0x0451, B:137:0x045d, B:149:0x04a2, B:141:0x047a, B:144:0x048c, B:146:0x0492, B:148:0x049c, B:36:0x013c, B:38:0x0149, B:40:0x0155, B:42:0x015b, B:46:0x0166, B:233:0x0723, B:235:0x0731, B:237:0x073a, B:248:0x076e, B:238:0x0744, B:240:0x074f, B:242:0x0755, B:245:0x0761, B:247:0x0769, B:249:0x0771, B:250:0x077d, B:252:0x0783, B:254:0x0795, B:255:0x07a0, B:257:0x07a8, B:261:0x07ce, B:263:0x07e8, B:265:0x07fd, B:267:0x0817, B:269:0x082c, B:270:0x083a, B:272:0x0840, B:274:0x0850, B:275:0x0857, B:277:0x0863, B:278:0x086a, B:279:0x086f, B:281:0x08b1, B:283:0x08b7, B:289:0x08de, B:291:0x08e6, B:292:0x08ef, B:294:0x08f5, B:295:0x08fb, B:297:0x0910, B:299:0x0920, B:301:0x0930, B:303:0x0938, B:304:0x093b, B:312:0x09af, B:314:0x09c8, B:316:0x09de, B:318:0x09e3, B:320:0x09e7, B:322:0x09eb, B:324:0x09f5, B:325:0x09fb, B:327:0x09ff, B:329:0x0a05, B:331:0x0a16, B:333:0x0a22, B:339:0x0a4a, B:342:0x0a50, B:284:0x08c5, B:286:0x08cb, B:288:0x08d1, B:268:0x0829, B:264:0x07fa, B:258:0x07ae, B:260:0x07b4), top: B:478:0x0017, inners: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:94:0x032f A[Catch: all -> 0x0103, TryCatch #1 {all -> 0x0103, blocks: (B:3:0x0017, B:5:0x0035, B:8:0x003f, B:9:0x0057, B:12:0x006f, B:15:0x0095, B:17:0x00cc, B:20:0x00dd, B:22:0x00e7, B:230:0x070a, B:27:0x011a, B:30:0x012c, B:32:0x0132, B:47:0x0174, B:49:0x0182, B:52:0x01a2, B:54:0x01a8, B:56:0x01b8, B:58:0x01c6, B:60:0x01d6, B:61:0x01e3, B:62:0x01e6, B:65:0x01fc, B:74:0x022c, B:77:0x0236, B:79:0x0244, B:84:0x028e, B:80:0x025f, B:82:0x026d, B:88:0x0299, B:91:0x02cc, B:92:0x02f6, B:94:0x032f, B:96:0x0335, B:99:0x0341, B:101:0x037a, B:102:0x0395, B:104:0x039b, B:106:0x03ab, B:110:0x03c1, B:107:0x03b5, B:113:0x03c8, B:116:0x03cf, B:117:0x03e7, B:119:0x0400, B:120:0x040c, B:123:0x0418, B:129:0x043b, B:126:0x042a, B:151:0x04bd, B:153:0x04c9, B:156:0x04da, B:158:0x04eb, B:160:0x04f7, B:197:0x05cb, B:199:0x05d1, B:200:0x05dd, B:202:0x05e3, B:204:0x05f3, B:206:0x05fd, B:207:0x0614, B:209:0x061a, B:210:0x0635, B:212:0x063b, B:213:0x0659, B:214:0x0662, B:218:0x068d, B:215:0x0668, B:217:0x067a, B:219:0x0699, B:220:0x06b5, B:222:0x06bb, B:224:0x06ce, B:225:0x06db, B:227:0x06e2, B:229:0x06f6, B:166:0x0517, B:168:0x0523, B:171:0x0536, B:173:0x0547, B:175:0x0553, B:177:0x0563, B:179:0x0572, B:181:0x057e, B:185:0x058d, B:187:0x0597, B:190:0x05a2, B:192:0x05a8, B:194:0x05b8, B:195:0x05c3, B:133:0x0445, B:135:0x0451, B:137:0x045d, B:149:0x04a2, B:141:0x047a, B:144:0x048c, B:146:0x0492, B:148:0x049c, B:36:0x013c, B:38:0x0149, B:40:0x0155, B:42:0x015b, B:46:0x0166, B:233:0x0723, B:235:0x0731, B:237:0x073a, B:248:0x076e, B:238:0x0744, B:240:0x074f, B:242:0x0755, B:245:0x0761, B:247:0x0769, B:249:0x0771, B:250:0x077d, B:252:0x0783, B:254:0x0795, B:255:0x07a0, B:257:0x07a8, B:261:0x07ce, B:263:0x07e8, B:265:0x07fd, B:267:0x0817, B:269:0x082c, B:270:0x083a, B:272:0x0840, B:274:0x0850, B:275:0x0857, B:277:0x0863, B:278:0x086a, B:279:0x086f, B:281:0x08b1, B:283:0x08b7, B:289:0x08de, B:291:0x08e6, B:292:0x08ef, B:294:0x08f5, B:295:0x08fb, B:297:0x0910, B:299:0x0920, B:301:0x0930, B:303:0x0938, B:304:0x093b, B:312:0x09af, B:314:0x09c8, B:316:0x09de, B:318:0x09e3, B:320:0x09e7, B:322:0x09eb, B:324:0x09f5, B:325:0x09fb, B:327:0x09ff, B:329:0x0a05, B:331:0x0a16, B:333:0x0a22, B:339:0x0a4a, B:342:0x0a50, B:284:0x08c5, B:286:0x08cb, B:288:0x08d1, B:268:0x0829, B:264:0x07fa, B:258:0x07ae, B:260:0x07b4), top: B:478:0x0017, inners: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0333  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x033f A[ADDED_TO_REGION] */
    /* JADX WARN: Type inference failed for: r2v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v128 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v52, types: [com.google.android.gms.measurement.internal.zzpg] */
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean zzaG(java.lang.String r46, long r47) {
        /*
            Method dump skipped, instructions count: 3669
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzpg.zzaG(java.lang.String, long):boolean");
    }

    @VisibleForTesting
    private final void zzaH(com.google.android.gms.internal.measurement.zzic zzicVar, long j, boolean z) {
        String str;
        zzpn zzpnVar;
        String str2;
        Object obj;
        if (true != z) {
            str = "_lte";
        } else {
            str = "_se";
        }
        String str3 = str;
        zzpn zzm = zzj().zzm(zzicVar.zzK(), str3);
        if (zzm != null && (obj = zzm.zze) != null) {
            zzpnVar = new zzpn(zzicVar.zzK(), "auto", str3, zzaZ().currentTimeMillis(), Long.valueOf(((Long) obj).longValue() + j));
        } else {
            zzpnVar = new zzpn(zzicVar.zzK(), "auto", str3, zzaZ().currentTimeMillis(), Long.valueOf(j));
        }
        com.google.android.gms.internal.measurement.zzit zzm2 = com.google.android.gms.internal.measurement.zziu.zzm();
        zzm2.zzb(str3);
        zzm2.zza(zzaZ().currentTimeMillis());
        Object obj2 = zzpnVar.zze;
        zzm2.zze(((Long) obj2).longValue());
        com.google.android.gms.internal.measurement.zziu zziuVar = (com.google.android.gms.internal.measurement.zziu) zzm2.zzbc();
        int zzx = zzpk.zzx(zzicVar, str3);
        if (zzx >= 0) {
            zzicVar.zzn(zzx, zziuVar);
        } else {
            zzicVar.zzo(zziuVar);
        }
        if (j > 0) {
            zzj().zzl(zzpnVar);
            if (true != z) {
                str2 = "lifetime";
            } else {
                str2 = "session-scoped";
            }
            zzaV().zzk().zzc("Updated engagement user property. scope, value", str2, obj2);
        }
    }

    private final boolean zzaI(com.google.android.gms.internal.measurement.zzhr zzhrVar, com.google.android.gms.internal.measurement.zzhr zzhrVar2) {
        String zzd;
        Preconditions.checkArgument("_e".equals(zzhrVar.zzk()));
        zzp();
        com.google.android.gms.internal.measurement.zzhw zzF = zzpk.zzF((com.google.android.gms.internal.measurement.zzhs) zzhrVar.zzbc(), "_sc");
        String str = null;
        if (zzF == null) {
            zzd = null;
        } else {
            zzd = zzF.zzd();
        }
        zzp();
        com.google.android.gms.internal.measurement.zzhw zzF2 = zzpk.zzF((com.google.android.gms.internal.measurement.zzhs) zzhrVar2.zzbc(), "_pc");
        if (zzF2 != null) {
            str = zzF2.zzd();
        }
        if (str != null && str.equals(zzd)) {
            Preconditions.checkArgument("_e".equals(zzhrVar.zzk()));
            zzp();
            com.google.android.gms.internal.measurement.zzhw zzF3 = zzpk.zzF((com.google.android.gms.internal.measurement.zzhs) zzhrVar.zzbc(), "_et");
            if (zzF3 != null && zzF3.zze() && zzF3.zzf() > 0) {
                long zzf = zzF3.zzf();
                zzp();
                com.google.android.gms.internal.measurement.zzhw zzF4 = zzpk.zzF((com.google.android.gms.internal.measurement.zzhs) zzhrVar2.zzbc(), "_et");
                if (zzF4 != null && zzF4.zzf() > 0) {
                    zzf += zzF4.zzf();
                }
                zzp();
                zzpk.zzC(zzhrVar2, "_et", Long.valueOf(zzf));
                zzp();
                zzpk.zzC(zzhrVar, "_fr", 1L);
                return true;
            }
            return true;
        }
        return false;
    }

    private final boolean zzaJ() {
        zzaW().zzg();
        zzu();
        if (!zzj().zzP() && TextUtils.isEmpty(zzj().zzF())) {
            return false;
        }
        return true;
    }

    private static String zzaK(Map map, String str) {
        if (map != null) {
            for (Map.Entry entry : map.entrySet()) {
                if (str.equalsIgnoreCase((String) entry.getKey())) {
                    if (!((List) entry.getValue()).isEmpty()) {
                        return (String) ((List) entry.getValue()).get(0);
                    }
                    return null;
                }
            }
            return null;
        }
        return null;
    }

    @WorkerThread
    private final void zzaL() {
        long max;
        long j;
        zzaW().zzg();
        zzu();
        if (this.zza > 0) {
            long abs = 3600000 - Math.abs(zzaZ().elapsedRealtime() - this.zza);
            if (abs > 0) {
                zzaV().zzk().zzb("Upload has been suspended. Will update scheduling later in approximately ms", Long.valueOf(abs));
                zzk().zzb();
                zzl().zzd();
                return;
            }
            this.zza = 0L;
        }
        if (this.zzn.zzH() && zzaJ()) {
            long currentTimeMillis = zzaZ().currentTimeMillis();
            zzd();
            long max2 = Math.max(0L, ((Long) zzfy.zzO.zzb(null)).longValue());
            boolean z = true;
            if (!zzj().zzR() && !zzj().zzG()) {
                z = false;
            }
            if (z) {
                String zzA = zzd().zzA();
                if (!TextUtils.isEmpty(zzA) && !".none.".equals(zzA)) {
                    zzd();
                    max = Math.max(0L, ((Long) zzfy.zzJ.zzb(null)).longValue());
                } else {
                    zzd();
                    max = Math.max(0L, ((Long) zzfy.zzI.zzb(null)).longValue());
                }
            } else {
                zzd();
                max = Math.max(0L, ((Long) zzfy.zzH.zzb(null)).longValue());
            }
            long zza = this.zzk.zzd.zza();
            long zza2 = this.zzk.zze.zza();
            long j2 = 0;
            boolean z2 = z;
            long max3 = Math.max(zzj().zzM(), zzj().zzO());
            if (max3 == 0) {
                j = 0;
            } else {
                long abs2 = currentTimeMillis - Math.abs(max3 - currentTimeMillis);
                long abs3 = currentTimeMillis - Math.abs(zza - currentTimeMillis);
                long abs4 = currentTimeMillis - Math.abs(zza2 - currentTimeMillis);
                j = max2 + abs2;
                long max4 = Math.max(abs3, abs4);
                if (z2 && max4 > 0) {
                    j = Math.min(abs2, max4) + max;
                }
                if (!zzp().zzs(max4, max)) {
                    j = max4 + max;
                }
                if (abs4 != 0 && abs4 >= abs2) {
                    int i = 0;
                    while (true) {
                        zzd();
                        if (i < Math.min(20, Math.max(0, ((Integer) zzfy.zzQ.zzb(null)).intValue()))) {
                            zzd();
                            j += Math.max(j2, ((Long) zzfy.zzP.zzb(null)).longValue()) * (1 << i);
                            if (j > abs4) {
                                break;
                            }
                            i++;
                            j2 = 0;
                        } else {
                            j = 0;
                            break;
                        }
                    }
                }
                j2 = 0;
            }
            if (j == j2) {
                zzaV().zzk().zza("Next upload time is 0");
                zzk().zzb();
                zzl().zzd();
                return;
            } else if (zzi().zzb()) {
                long zza3 = this.zzk.zzc.zza();
                zzd();
                long max5 = Math.max(0L, ((Long) zzfy.zzF.zzb(null)).longValue());
                if (!zzp().zzs(zza3, max5)) {
                    j = Math.max(j, zza3 + max5);
                }
                zzk().zzb();
                long currentTimeMillis2 = j - zzaZ().currentTimeMillis();
                if (currentTimeMillis2 <= 0) {
                    zzd();
                    currentTimeMillis2 = Math.max(0L, ((Long) zzfy.zzK.zzb(null)).longValue());
                    this.zzk.zzd.zzb(zzaZ().currentTimeMillis());
                }
                zzaV().zzk().zzb("Upload scheduled in approximately ms", Long.valueOf(currentTimeMillis2));
                zzl().zzc(currentTimeMillis2);
                return;
            } else {
                zzaV().zzk().zza("No network");
                zzk().zza();
                zzl().zzd();
                return;
            }
        }
        zzaV().zzk().zza("Nothing to upload or uploading impossible");
        zzk().zzb();
        zzl().zzd();
    }

    @WorkerThread
    private final void zzaM() {
        zzaW().zzg();
        if (!this.zzu && !this.zzv && !this.zzw) {
            zzaV().zzk().zza("Stopping uploading service(s)");
            List<Runnable> list = this.zzq;
            if (list == null) {
                return;
            }
            for (Runnable runnable : list) {
                runnable.run();
            }
            ((List) Preconditions.checkNotNull(this.zzq)).clear();
            return;
        }
        zzaV().zzk().zzd("Not stopping services. fetch, network, upload", Boolean.valueOf(this.zzu), Boolean.valueOf(this.zzv), Boolean.valueOf(this.zzw));
    }

    @WorkerThread
    private final Boolean zzaN(zzh zzhVar) {
        try {
            if (zzhVar.zzt() != -2147483648L) {
                if (zzhVar.zzt() == Wrappers.packageManager(this.zzn.zzaY()).getPackageInfo(zzhVar.zzc(), 0).versionCode) {
                    return Boolean.TRUE;
                }
            } else {
                String str = Wrappers.packageManager(this.zzn.zzaY()).getPackageInfo(zzhVar.zzc(), 0).versionName;
                String zzr = zzhVar.zzr();
                if (zzr != null && zzr.equals(str)) {
                    return Boolean.TRUE;
                }
            }
            return Boolean.FALSE;
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    @WorkerThread
    private final zzr zzaO(String str) {
        zzh zzu = zzj().zzu(str);
        if (zzu != null && !TextUtils.isEmpty(zzu.zzr())) {
            Boolean zzaN = zzaN(zzu);
            if (zzaN != null && !zzaN.booleanValue()) {
                zzaV().zzb().zzb("App version does not match; dropping. appId", zzgu.zzl(str));
                return null;
            }
            return new zzr(str, zzu.zzf(), zzu.zzr(), zzu.zzt(), zzu.zzv(), zzu.zzx(), zzu.zzz(), (String) null, zzu.zzD(), false, zzu.zzl(), 0L, 0, zzu.zzac(), false, zzu.zzae(), zzu.zzB(), zzu.zzag(), zzB(str).zzl(), "", (String) null, zzu.zzai(), zzu.zzak(), zzB(str).zzb(), zzx(str).zze(), zzu.zzao(), zzu.zzaw(), zzu.zzay(), zzu.zzaH(), 0L, zzu.zzaL());
        }
        zzaV().zzj().zzb("No app data available; dropping", str);
        return null;
    }

    @WorkerThread
    private final boolean zzaP(String str, String str2) {
        zzbc zzf = zzj().zzf(str, str2);
        if (zzf != null && zzf.zzc >= 1) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zzaQ(Context context, Intent intent) {
        BroadcastOptions makeBasic;
        BroadcastOptions shareIdentityEnabled;
        Bundle bundle;
        if (Build.VERSION.SDK_INT >= 34) {
            makeBasic = BroadcastOptions.makeBasic();
            shareIdentityEnabled = makeBasic.setShareIdentityEnabled(true);
            bundle = shareIdentityEnabled.toBundle();
            context.sendBroadcast(intent, null, bundle);
            return;
        }
        context.sendBroadcast(intent);
    }

    private static final boolean zzaR(zzr zzrVar) {
        if (!TextUtils.isEmpty(zzrVar.zzb)) {
            return true;
        }
        return false;
    }

    private static final zzos zzaS(zzos zzosVar) {
        if (zzosVar != null) {
            if (zzosVar.zzav()) {
                return zzosVar;
            }
            throw new IllegalStateException("Component not initialized: ".concat(String.valueOf(zzosVar.getClass())));
        }
        throw new IllegalStateException("Upload Component not created");
    }

    private static final Boolean zzaT(zzr zzrVar) {
        Boolean bool = zzrVar.zzp;
        String str = zzrVar.zzC;
        if (!TextUtils.isEmpty(str)) {
            zzji zza = zze.zzc(str).zza();
            zzji zzjiVar = zzji.UNINITIALIZED;
            int ordinal = zza.ordinal();
            if (ordinal != 0 && ordinal != 1) {
                if (ordinal != 2) {
                    if (ordinal == 3) {
                        return Boolean.FALSE;
                    }
                } else {
                    return Boolean.TRUE;
                }
            } else {
                return null;
            }
        }
        return bool;
    }

    @WorkerThread
    public final void zzA(String str, zzjl zzjlVar) {
        zzaW().zzg();
        zzu();
        this.zzC.put(str, zzjlVar);
        zzj().zzZ(str, zzjlVar);
    }

    @WorkerThread
    public final zzjl zzB(String str) {
        zzjl zzjlVar = zzjl.zza;
        zzaW().zzg();
        zzu();
        zzjl zzjlVar2 = (zzjl) this.zzC.get(str);
        if (zzjlVar2 == null) {
            zzjlVar2 = zzj().zzX(str);
            if (zzjlVar2 == null) {
                zzjlVar2 = zzjl.zza;
            }
            zzA(str, zzjlVar2);
        }
        return zzjlVar2;
    }

    public final long zzC() {
        long currentTimeMillis = zzaZ().currentTimeMillis();
        zznn zznnVar = this.zzk;
        zznnVar.zzaw();
        zznnVar.zzg();
        zzhe zzheVar = zznnVar.zzf;
        long zza = zzheVar.zza();
        if (zza == 0) {
            zza = zznnVar.zzu.zzk().zzf().nextInt(86400000) + 1;
            zzheVar.zzb(zza);
        }
        return ((((currentTimeMillis + zza) / 1000) / 60) / 60) / 24;
    }

    @WorkerThread
    public final void zzD(zzbg zzbgVar, String str) {
        zzh zzu = zzj().zzu(str);
        if (zzu != null && !TextUtils.isEmpty(zzu.zzr())) {
            Boolean zzaN = zzaN(zzu);
            if (zzaN == null) {
                if (!"_ui".equals(zzbgVar.zza)) {
                    zzaV().zze().zzb("Could not find package. appId", zzgu.zzl(str));
                }
            } else if (!zzaN.booleanValue()) {
                zzaV().zzb().zzb("App version does not match; dropping event. appId", zzgu.zzl(str));
                return;
            }
            zzE(zzbgVar, new zzr(str, zzu.zzf(), zzu.zzr(), zzu.zzt(), zzu.zzv(), zzu.zzx(), zzu.zzz(), (String) null, zzu.zzD(), false, zzu.zzl(), 0L, 0, zzu.zzac(), false, zzu.zzae(), zzu.zzB(), zzu.zzag(), zzB(str).zzl(), "", (String) null, zzu.zzai(), zzu.zzak(), zzB(str).zzb(), zzx(str).zze(), zzu.zzao(), zzu.zzaw(), zzu.zzay(), zzu.zzaH(), 0L, zzu.zzaL()));
            return;
        }
        zzaV().zzj().zzb("No app data available; dropping event", str);
    }

    @WorkerThread
    public final void zzE(zzbg zzbgVar, zzr zzrVar) {
        String str = zzrVar.zza;
        Preconditions.checkNotEmpty(str);
        zzgv zza = zzgv.zza(zzbgVar);
        zzt().zzI(zza.zzd, zzj().zzU(str));
        zzt().zzG(zza, zzd().zzd(str));
        zzbg zzb2 = zza.zzb();
        if (!zzd().zzp(null, zzfy.zzbf) && Constants.ScionAnalytics.EVENT_FIREBASE_CAMPAIGN.equals(zzb2.zza)) {
            zzbe zzbeVar = zzb2.zzb;
            if ("referrer API v2".equals(zzbeVar.zzd("_cis"))) {
                String zzd = zzbeVar.zzd("gclid");
                if (!TextUtils.isEmpty(zzd)) {
                    zzac(new zzpl("_lgclid", zzb2.zzd, zzd, "auto"), zzrVar);
                }
            }
        }
        zzF(zzb2, zzrVar);
    }

    @WorkerThread
    public final void zzF(zzbg zzbgVar, zzr zzrVar) {
        zzlu zzluVar;
        zzbg zzbgVar2;
        List<zzah> zzt;
        List<zzah> zzt2;
        List<zzah> zzt3;
        String str;
        Preconditions.checkNotNull(zzrVar);
        String str2 = zzrVar.zza;
        Preconditions.checkNotEmpty(str2);
        zzaW().zzg();
        zzu();
        long j = zzbgVar.zzd;
        zzgv zza = zzgv.zza(zzbgVar);
        zzaW().zzg();
        if (this.zzG == null || (str = this.zzH) == null || !str.equals(str2)) {
            zzluVar = null;
        } else {
            zzluVar = this.zzG;
        }
        zzpp.zzav(zzluVar, zza.zzd, false);
        zzbg zzb2 = zza.zzb();
        zzp();
        if (!zzpk.zzD(zzb2, zzrVar)) {
            return;
        }
        if (!zzrVar.zzh) {
            zzao(zzrVar);
            return;
        }
        List list = zzrVar.zzr;
        if (list != null) {
            String str3 = zzb2.zza;
            if (list.contains(str3)) {
                Bundle zzf = zzb2.zzb.zzf();
                zzf.putLong("ga_safelisted", 1L);
                zzbgVar2 = new zzbg(str3, new zzbe(zzf), zzb2.zzc, zzb2.zzd);
            } else {
                zzaV().zzj().zzd("Dropping non-safelisted event. appId, event name, origin", str2, zzb2.zza, zzb2.zzc);
                return;
            }
        } else {
            zzbgVar2 = zzb2;
        }
        zzj().zzb();
        try {
            String str4 = zzbgVar2.zza;
            if ("_s".equals(str4) && !zzj().zzQ(str2, "_s") && zzbgVar2.zzb.zzb("_sid").longValue() != 0) {
                if (!zzj().zzQ(str2, "_f") && !zzj().zzQ(str2, "_v")) {
                    zzj().zzW(str2, Long.valueOf(zzaZ().currentTimeMillis() - 15000), "_sid", zzG(str2, zzbgVar2));
                }
                zzj().zzW(str2, null, "_sid", zzG(str2, zzbgVar2));
            }
            zzav zzj = zzj();
            Preconditions.checkNotEmpty(str2);
            zzj.zzg();
            zzj.zzaw();
            int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
            if (i < 0) {
                zzj.zzu.zzaV().zze().zzc("Invalid time querying timed out conditional properties", zzgu.zzl(str2), Long.valueOf(j));
                zzt = Collections.EMPTY_LIST;
            } else {
                zzt = zzj.zzt("active=0 and app_id=? and abs(? - creation_timestamp) > trigger_timeout", new String[]{str2, String.valueOf(j)});
            }
            for (zzah zzahVar : zzt) {
                if (zzahVar != null) {
                    zzaV().zzk().zzd("User property timed out", zzahVar.zza, this.zzn.zzl().zzc(zzahVar.zzc.zzb), zzahVar.zzc.zza());
                    zzbg zzbgVar3 = zzahVar.zzg;
                    if (zzbgVar3 != null) {
                        zzH(new zzbg(zzbgVar3, j), zzrVar);
                    }
                    zzj().zzr(str2, zzahVar.zzc.zzb);
                }
            }
            zzav zzj2 = zzj();
            Preconditions.checkNotEmpty(str2);
            zzj2.zzg();
            zzj2.zzaw();
            if (i < 0) {
                zzj2.zzu.zzaV().zze().zzc("Invalid time querying expired conditional properties", zzgu.zzl(str2), Long.valueOf(j));
                zzt2 = Collections.EMPTY_LIST;
            } else {
                zzt2 = zzj2.zzt("active<>0 and app_id=? and abs(? - triggered_timestamp) > time_to_live", new String[]{str2, String.valueOf(j)});
            }
            ArrayList arrayList = new ArrayList(zzt2.size());
            for (zzah zzahVar2 : zzt2) {
                if (zzahVar2 != null) {
                    zzaV().zzk().zzd("User property expired", zzahVar2.zza, this.zzn.zzl().zzc(zzahVar2.zzc.zzb), zzahVar2.zzc.zza());
                    zzj().zzk(str2, zzahVar2.zzc.zzb);
                    zzbg zzbgVar4 = zzahVar2.zzk;
                    if (zzbgVar4 != null) {
                        arrayList.add(zzbgVar4);
                    }
                    zzj().zzr(str2, zzahVar2.zzc.zzb);
                }
            }
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                Object obj = arrayList.get(i2);
                i2++;
                zzH(new zzbg((zzbg) obj, j), zzrVar);
            }
            zzav zzj3 = zzj();
            Preconditions.checkNotEmpty(str2);
            Preconditions.checkNotEmpty(str4);
            zzj3.zzg();
            zzj3.zzaw();
            if (i < 0) {
                zzic zzicVar = zzj3.zzu;
                zzicVar.zzaV().zze().zzd("Invalid time querying triggered conditional properties", zzgu.zzl(str2), zzicVar.zzl().zza(str4), Long.valueOf(j));
                zzt3 = Collections.EMPTY_LIST;
            } else {
                zzt3 = zzj3.zzt("active=0 and app_id=? and trigger_event_name=? and abs(? - creation_timestamp) <= trigger_timeout", new String[]{str2, str4, String.valueOf(j)});
            }
            ArrayList arrayList2 = new ArrayList(zzt3.size());
            for (zzah zzahVar3 : zzt3) {
                if (zzahVar3 != null) {
                    zzpl zzplVar = zzahVar3.zzc;
                    zzpn zzpnVar = new zzpn((String) Preconditions.checkNotNull(zzahVar3.zza), zzahVar3.zzb, zzplVar.zzb, j, Preconditions.checkNotNull(zzplVar.zza()));
                    if (zzj().zzl(zzpnVar)) {
                        zzaV().zzk().zzd("User property triggered", zzahVar3.zza, this.zzn.zzl().zzc(zzpnVar.zzc), zzpnVar.zze);
                    } else {
                        zzaV().zzb().zzd("Too many active user properties, ignoring", zzgu.zzl(zzahVar3.zza), this.zzn.zzl().zzc(zzpnVar.zzc), zzpnVar.zze);
                    }
                    zzbg zzbgVar5 = zzahVar3.zzi;
                    if (zzbgVar5 != null) {
                        arrayList2.add(zzbgVar5);
                    }
                    zzahVar3.zzc = new zzpl(zzpnVar);
                    zzahVar3.zze = true;
                    zzj().zzp(zzahVar3);
                }
            }
            zzH(zzbgVar2, zzrVar);
            int size2 = arrayList2.size();
            int i3 = 0;
            while (i3 < size2) {
                Object obj2 = arrayList2.get(i3);
                i3++;
                zzH(new zzbg((zzbg) obj2, j), zzrVar);
            }
            zzj().zzc();
            zzj().zzd();
        } catch (Throwable th) {
            zzj().zzd();
            throw th;
        }
    }

    public final Bundle zzG(String str, zzbg zzbgVar) {
        Bundle bundle = new Bundle();
        bundle.putLong("_sid", zzbgVar.zzb.zzb("_sid").longValue());
        zzpn zzm = zzj().zzm(str, "_sno");
        if (zzm != null) {
            Object obj = zzm.zze;
            if (obj instanceof Long) {
                bundle.putLong("_sno", ((Long) obj).longValue());
            }
        }
        return bundle;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(16:357|(2:359|(10:361|362|363|(1:365)|58|(0)(0)|61|(0)(0)|67|68))|366|367|368|369|370|362|363|(0)|58|(0)(0)|61|(0)(0)|67|68) */
    /* JADX WARN: Can't wrap try/catch for region: R(65:(2:70|(3:72|(1:74)|75))|76|(2:78|(3:80|(1:82)|83))(1:329)|84|85|(1:87)|88|(2:92|(1:94))|95|(2:101|(2:103|104))|107|(3:108|109|110)|111|(1:113)|114|(2:116|(1:120)(1:119))(1:325)|121|(1:123)|124|(1:126)|127|(1:129)|130|(1:132)|133|(1:135)|136|(1:138)|139|(6:143|(1:147)|148|(1:150)(1:183)|151|(1:153)(15:154|(1:156)(1:182)|157|(1:159)(1:181)|160|(1:162)(1:180)|163|(1:165)(1:179)|166|(1:168)(1:178)|169|(1:171)(1:177)|172|(1:174)(1:176)|175))|184|(1:186)|187|(1:189)(1:324)|(34:193|(4:196|(3:198|199|(3:201|202|(3:204|205|207)(1:315))(1:317))(1:321)|316|194)|322|208|(1:210)|(1:212)|213|(1:215)|216|(2:220|(4:222|(1:224)|225|(28:233|(1:235)(1:313)|236|(1:238)|239|240|(2:242|(1:244))|245|(3:247|(1:249)|250)(1:312)|251|(1:255)|256|(1:258)|259|(4:262|(2:268|269)|270|260)|274|275|276|277|278|(2:279|(2:281|(1:283))(3:298|299|(1:304)(1:303)))|285|286|287|(1:289)(2:294|295)|290|291|292)))|314|240|(0)|245|(0)(0)|251|(2:253|255)|256|(0)|259|(1:260)|274|275|276|277|278|(3:279|(0)(0)|282)|285|286|287|(0)(0)|290|291|292)|323|(0)|213|(0)|216|(3:218|220|(0))|314|240|(0)|245|(0)(0)|251|(0)|256|(0)|259|(1:260)|274|275|276|277|278|(3:279|(0)(0)|282)|285|286|287|(0)(0)|290|291|292) */
    /* JADX WARN: Code restructure failed: missing block: B:317:0x0a32, code lost:
        r30 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:329:0x0ae5, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:333:0x0aec, code lost:
        r2.zzu.zzaV().zzb().zzc("Error storing raw event. appId", com.google.android.gms.measurement.internal.zzgu.zzl(r3.zza), r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:335:0x0b02, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:340:0x0b1d, code lost:
        zzaV().zzb().zzc("Data loss. Failed to insert raw event metadata. appId", com.google.android.gms.measurement.internal.zzgu.zzl(r8.zzK()), r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x028a, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x028b, code lost:
        r12.zzu.zzaV().zzb().zzc("Error pruning currencies. appId", com.google.android.gms.measurement.internal.zzgu.zzl(r10), r0);
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:100:0x0366 A[Catch: all -> 0x0176, TryCatch #3 {all -> 0x0176, blocks: (B:36:0x0155, B:39:0x0164, B:41:0x016c, B:47:0x0179, B:89:0x02f2, B:98:0x0325, B:100:0x0366, B:102:0x036b, B:103:0x0382, B:105:0x038d, B:107:0x03a6, B:109:0x03ab, B:110:0x03c2, B:113:0x03e4, B:117:0x0407, B:118:0x041e, B:120:0x042a, B:123:0x0447, B:124:0x045b, B:126:0x0463, B:128:0x046f, B:130:0x0475, B:131:0x047c, B:133:0x0489, B:135:0x0491, B:137:0x0499, B:139:0x04a1, B:140:0x04ad, B:141:0x04ba, B:147:0x04fc, B:148:0x0511, B:150:0x0533, B:153:0x054a, B:156:0x0585, B:158:0x05b0, B:160:0x05e8, B:161:0x05eb, B:163:0x05f3, B:164:0x05f6, B:166:0x05fe, B:167:0x0601, B:169:0x0609, B:170:0x060c, B:172:0x0615, B:173:0x0619, B:175:0x0626, B:176:0x0629, B:178:0x0655, B:180:0x065f, B:184:0x0674, B:189:0x0680, B:192:0x0689, B:196:0x0696, B:200:0x06a4, B:204:0x06b2, B:208:0x06c0, B:212:0x06ce, B:216:0x06d9, B:220:0x06e6, B:221:0x06f2, B:223:0x06f8, B:224:0x06fb, B:226:0x071e, B:229:0x0727, B:232:0x0730, B:233:0x074a, B:235:0x0750, B:237:0x0764, B:239:0x0770, B:241:0x077d, B:244:0x0796, B:245:0x07a6, B:249:0x07af, B:250:0x07b2, B:252:0x07bf, B:253:0x07c4, B:255:0x07e2, B:257:0x07e6, B:259:0x07f6, B:261:0x0801, B:262:0x080a, B:264:0x0814, B:266:0x0820, B:268:0x082a, B:270:0x0830, B:272:0x083f, B:274:0x0855, B:276:0x085b, B:277:0x0864, B:279:0x0872, B:281:0x08ae, B:283:0x08b8, B:284:0x08bb, B:286:0x08c5, B:288:0x08e1, B:289:0x08ec, B:291:0x0924, B:293:0x092c, B:295:0x0936, B:296:0x0943, B:298:0x094d, B:299:0x095a, B:300:0x0963, B:302:0x0969, B:304:0x09a5, B:306:0x09af, B:308:0x09c1, B:310:0x09c7, B:311:0x0a0c, B:312:0x0a17, B:313:0x0a22, B:315:0x0a28, B:324:0x0a75, B:325:0x0ac0, B:327:0x0ad1, B:341:0x0b32, B:332:0x0ae9, B:333:0x0aec, B:318:0x0a35, B:320:0x0a61, B:338:0x0b05, B:339:0x0b1c, B:340:0x0b1d, B:227:0x0721, B:157:0x05a2, B:144:0x04e3, B:92:0x0306, B:93:0x030d, B:95:0x0313, B:97:0x031f, B:54:0x0191, B:56:0x019d, B:58:0x01b2, B:64:0x01d2, B:69:0x0208, B:71:0x020e, B:73:0x021c, B:75:0x022a, B:78:0x0236, B:86:0x02bb, B:88:0x02c5, B:80:0x025f, B:81:0x0278, B:85:0x029e, B:84:0x028b, B:67:0x01de, B:68:0x01fc), top: B:353:0x0155, inners: #0, #1, #4, #6, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:104:0x038b  */
    /* JADX WARN: Removed duplicated region for block: B:249:0x07af A[Catch: all -> 0x0176, TryCatch #3 {all -> 0x0176, blocks: (B:36:0x0155, B:39:0x0164, B:41:0x016c, B:47:0x0179, B:89:0x02f2, B:98:0x0325, B:100:0x0366, B:102:0x036b, B:103:0x0382, B:105:0x038d, B:107:0x03a6, B:109:0x03ab, B:110:0x03c2, B:113:0x03e4, B:117:0x0407, B:118:0x041e, B:120:0x042a, B:123:0x0447, B:124:0x045b, B:126:0x0463, B:128:0x046f, B:130:0x0475, B:131:0x047c, B:133:0x0489, B:135:0x0491, B:137:0x0499, B:139:0x04a1, B:140:0x04ad, B:141:0x04ba, B:147:0x04fc, B:148:0x0511, B:150:0x0533, B:153:0x054a, B:156:0x0585, B:158:0x05b0, B:160:0x05e8, B:161:0x05eb, B:163:0x05f3, B:164:0x05f6, B:166:0x05fe, B:167:0x0601, B:169:0x0609, B:170:0x060c, B:172:0x0615, B:173:0x0619, B:175:0x0626, B:176:0x0629, B:178:0x0655, B:180:0x065f, B:184:0x0674, B:189:0x0680, B:192:0x0689, B:196:0x0696, B:200:0x06a4, B:204:0x06b2, B:208:0x06c0, B:212:0x06ce, B:216:0x06d9, B:220:0x06e6, B:221:0x06f2, B:223:0x06f8, B:224:0x06fb, B:226:0x071e, B:229:0x0727, B:232:0x0730, B:233:0x074a, B:235:0x0750, B:237:0x0764, B:239:0x0770, B:241:0x077d, B:244:0x0796, B:245:0x07a6, B:249:0x07af, B:250:0x07b2, B:252:0x07bf, B:253:0x07c4, B:255:0x07e2, B:257:0x07e6, B:259:0x07f6, B:261:0x0801, B:262:0x080a, B:264:0x0814, B:266:0x0820, B:268:0x082a, B:270:0x0830, B:272:0x083f, B:274:0x0855, B:276:0x085b, B:277:0x0864, B:279:0x0872, B:281:0x08ae, B:283:0x08b8, B:284:0x08bb, B:286:0x08c5, B:288:0x08e1, B:289:0x08ec, B:291:0x0924, B:293:0x092c, B:295:0x0936, B:296:0x0943, B:298:0x094d, B:299:0x095a, B:300:0x0963, B:302:0x0969, B:304:0x09a5, B:306:0x09af, B:308:0x09c1, B:310:0x09c7, B:311:0x0a0c, B:312:0x0a17, B:313:0x0a22, B:315:0x0a28, B:324:0x0a75, B:325:0x0ac0, B:327:0x0ad1, B:341:0x0b32, B:332:0x0ae9, B:333:0x0aec, B:318:0x0a35, B:320:0x0a61, B:338:0x0b05, B:339:0x0b1c, B:340:0x0b1d, B:227:0x0721, B:157:0x05a2, B:144:0x04e3, B:92:0x0306, B:93:0x030d, B:95:0x0313, B:97:0x031f, B:54:0x0191, B:56:0x019d, B:58:0x01b2, B:64:0x01d2, B:69:0x0208, B:71:0x020e, B:73:0x021c, B:75:0x022a, B:78:0x0236, B:86:0x02bb, B:88:0x02c5, B:80:0x025f, B:81:0x0278, B:85:0x029e, B:84:0x028b, B:67:0x01de, B:68:0x01fc), top: B:353:0x0155, inners: #0, #1, #4, #6, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:252:0x07bf A[Catch: all -> 0x0176, TryCatch #3 {all -> 0x0176, blocks: (B:36:0x0155, B:39:0x0164, B:41:0x016c, B:47:0x0179, B:89:0x02f2, B:98:0x0325, B:100:0x0366, B:102:0x036b, B:103:0x0382, B:105:0x038d, B:107:0x03a6, B:109:0x03ab, B:110:0x03c2, B:113:0x03e4, B:117:0x0407, B:118:0x041e, B:120:0x042a, B:123:0x0447, B:124:0x045b, B:126:0x0463, B:128:0x046f, B:130:0x0475, B:131:0x047c, B:133:0x0489, B:135:0x0491, B:137:0x0499, B:139:0x04a1, B:140:0x04ad, B:141:0x04ba, B:147:0x04fc, B:148:0x0511, B:150:0x0533, B:153:0x054a, B:156:0x0585, B:158:0x05b0, B:160:0x05e8, B:161:0x05eb, B:163:0x05f3, B:164:0x05f6, B:166:0x05fe, B:167:0x0601, B:169:0x0609, B:170:0x060c, B:172:0x0615, B:173:0x0619, B:175:0x0626, B:176:0x0629, B:178:0x0655, B:180:0x065f, B:184:0x0674, B:189:0x0680, B:192:0x0689, B:196:0x0696, B:200:0x06a4, B:204:0x06b2, B:208:0x06c0, B:212:0x06ce, B:216:0x06d9, B:220:0x06e6, B:221:0x06f2, B:223:0x06f8, B:224:0x06fb, B:226:0x071e, B:229:0x0727, B:232:0x0730, B:233:0x074a, B:235:0x0750, B:237:0x0764, B:239:0x0770, B:241:0x077d, B:244:0x0796, B:245:0x07a6, B:249:0x07af, B:250:0x07b2, B:252:0x07bf, B:253:0x07c4, B:255:0x07e2, B:257:0x07e6, B:259:0x07f6, B:261:0x0801, B:262:0x080a, B:264:0x0814, B:266:0x0820, B:268:0x082a, B:270:0x0830, B:272:0x083f, B:274:0x0855, B:276:0x085b, B:277:0x0864, B:279:0x0872, B:281:0x08ae, B:283:0x08b8, B:284:0x08bb, B:286:0x08c5, B:288:0x08e1, B:289:0x08ec, B:291:0x0924, B:293:0x092c, B:295:0x0936, B:296:0x0943, B:298:0x094d, B:299:0x095a, B:300:0x0963, B:302:0x0969, B:304:0x09a5, B:306:0x09af, B:308:0x09c1, B:310:0x09c7, B:311:0x0a0c, B:312:0x0a17, B:313:0x0a22, B:315:0x0a28, B:324:0x0a75, B:325:0x0ac0, B:327:0x0ad1, B:341:0x0b32, B:332:0x0ae9, B:333:0x0aec, B:318:0x0a35, B:320:0x0a61, B:338:0x0b05, B:339:0x0b1c, B:340:0x0b1d, B:227:0x0721, B:157:0x05a2, B:144:0x04e3, B:92:0x0306, B:93:0x030d, B:95:0x0313, B:97:0x031f, B:54:0x0191, B:56:0x019d, B:58:0x01b2, B:64:0x01d2, B:69:0x0208, B:71:0x020e, B:73:0x021c, B:75:0x022a, B:78:0x0236, B:86:0x02bb, B:88:0x02c5, B:80:0x025f, B:81:0x0278, B:85:0x029e, B:84:0x028b, B:67:0x01de, B:68:0x01fc), top: B:353:0x0155, inners: #0, #1, #4, #6, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:259:0x07f6 A[Catch: all -> 0x0176, TryCatch #3 {all -> 0x0176, blocks: (B:36:0x0155, B:39:0x0164, B:41:0x016c, B:47:0x0179, B:89:0x02f2, B:98:0x0325, B:100:0x0366, B:102:0x036b, B:103:0x0382, B:105:0x038d, B:107:0x03a6, B:109:0x03ab, B:110:0x03c2, B:113:0x03e4, B:117:0x0407, B:118:0x041e, B:120:0x042a, B:123:0x0447, B:124:0x045b, B:126:0x0463, B:128:0x046f, B:130:0x0475, B:131:0x047c, B:133:0x0489, B:135:0x0491, B:137:0x0499, B:139:0x04a1, B:140:0x04ad, B:141:0x04ba, B:147:0x04fc, B:148:0x0511, B:150:0x0533, B:153:0x054a, B:156:0x0585, B:158:0x05b0, B:160:0x05e8, B:161:0x05eb, B:163:0x05f3, B:164:0x05f6, B:166:0x05fe, B:167:0x0601, B:169:0x0609, B:170:0x060c, B:172:0x0615, B:173:0x0619, B:175:0x0626, B:176:0x0629, B:178:0x0655, B:180:0x065f, B:184:0x0674, B:189:0x0680, B:192:0x0689, B:196:0x0696, B:200:0x06a4, B:204:0x06b2, B:208:0x06c0, B:212:0x06ce, B:216:0x06d9, B:220:0x06e6, B:221:0x06f2, B:223:0x06f8, B:224:0x06fb, B:226:0x071e, B:229:0x0727, B:232:0x0730, B:233:0x074a, B:235:0x0750, B:237:0x0764, B:239:0x0770, B:241:0x077d, B:244:0x0796, B:245:0x07a6, B:249:0x07af, B:250:0x07b2, B:252:0x07bf, B:253:0x07c4, B:255:0x07e2, B:257:0x07e6, B:259:0x07f6, B:261:0x0801, B:262:0x080a, B:264:0x0814, B:266:0x0820, B:268:0x082a, B:270:0x0830, B:272:0x083f, B:274:0x0855, B:276:0x085b, B:277:0x0864, B:279:0x0872, B:281:0x08ae, B:283:0x08b8, B:284:0x08bb, B:286:0x08c5, B:288:0x08e1, B:289:0x08ec, B:291:0x0924, B:293:0x092c, B:295:0x0936, B:296:0x0943, B:298:0x094d, B:299:0x095a, B:300:0x0963, B:302:0x0969, B:304:0x09a5, B:306:0x09af, B:308:0x09c1, B:310:0x09c7, B:311:0x0a0c, B:312:0x0a17, B:313:0x0a22, B:315:0x0a28, B:324:0x0a75, B:325:0x0ac0, B:327:0x0ad1, B:341:0x0b32, B:332:0x0ae9, B:333:0x0aec, B:318:0x0a35, B:320:0x0a61, B:338:0x0b05, B:339:0x0b1c, B:340:0x0b1d, B:227:0x0721, B:157:0x05a2, B:144:0x04e3, B:92:0x0306, B:93:0x030d, B:95:0x0313, B:97:0x031f, B:54:0x0191, B:56:0x019d, B:58:0x01b2, B:64:0x01d2, B:69:0x0208, B:71:0x020e, B:73:0x021c, B:75:0x022a, B:78:0x0236, B:86:0x02bb, B:88:0x02c5, B:80:0x025f, B:81:0x0278, B:85:0x029e, B:84:0x028b, B:67:0x01de, B:68:0x01fc), top: B:353:0x0155, inners: #0, #1, #4, #6, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:281:0x08ae A[Catch: all -> 0x0176, TryCatch #3 {all -> 0x0176, blocks: (B:36:0x0155, B:39:0x0164, B:41:0x016c, B:47:0x0179, B:89:0x02f2, B:98:0x0325, B:100:0x0366, B:102:0x036b, B:103:0x0382, B:105:0x038d, B:107:0x03a6, B:109:0x03ab, B:110:0x03c2, B:113:0x03e4, B:117:0x0407, B:118:0x041e, B:120:0x042a, B:123:0x0447, B:124:0x045b, B:126:0x0463, B:128:0x046f, B:130:0x0475, B:131:0x047c, B:133:0x0489, B:135:0x0491, B:137:0x0499, B:139:0x04a1, B:140:0x04ad, B:141:0x04ba, B:147:0x04fc, B:148:0x0511, B:150:0x0533, B:153:0x054a, B:156:0x0585, B:158:0x05b0, B:160:0x05e8, B:161:0x05eb, B:163:0x05f3, B:164:0x05f6, B:166:0x05fe, B:167:0x0601, B:169:0x0609, B:170:0x060c, B:172:0x0615, B:173:0x0619, B:175:0x0626, B:176:0x0629, B:178:0x0655, B:180:0x065f, B:184:0x0674, B:189:0x0680, B:192:0x0689, B:196:0x0696, B:200:0x06a4, B:204:0x06b2, B:208:0x06c0, B:212:0x06ce, B:216:0x06d9, B:220:0x06e6, B:221:0x06f2, B:223:0x06f8, B:224:0x06fb, B:226:0x071e, B:229:0x0727, B:232:0x0730, B:233:0x074a, B:235:0x0750, B:237:0x0764, B:239:0x0770, B:241:0x077d, B:244:0x0796, B:245:0x07a6, B:249:0x07af, B:250:0x07b2, B:252:0x07bf, B:253:0x07c4, B:255:0x07e2, B:257:0x07e6, B:259:0x07f6, B:261:0x0801, B:262:0x080a, B:264:0x0814, B:266:0x0820, B:268:0x082a, B:270:0x0830, B:272:0x083f, B:274:0x0855, B:276:0x085b, B:277:0x0864, B:279:0x0872, B:281:0x08ae, B:283:0x08b8, B:284:0x08bb, B:286:0x08c5, B:288:0x08e1, B:289:0x08ec, B:291:0x0924, B:293:0x092c, B:295:0x0936, B:296:0x0943, B:298:0x094d, B:299:0x095a, B:300:0x0963, B:302:0x0969, B:304:0x09a5, B:306:0x09af, B:308:0x09c1, B:310:0x09c7, B:311:0x0a0c, B:312:0x0a17, B:313:0x0a22, B:315:0x0a28, B:324:0x0a75, B:325:0x0ac0, B:327:0x0ad1, B:341:0x0b32, B:332:0x0ae9, B:333:0x0aec, B:318:0x0a35, B:320:0x0a61, B:338:0x0b05, B:339:0x0b1c, B:340:0x0b1d, B:227:0x0721, B:157:0x05a2, B:144:0x04e3, B:92:0x0306, B:93:0x030d, B:95:0x0313, B:97:0x031f, B:54:0x0191, B:56:0x019d, B:58:0x01b2, B:64:0x01d2, B:69:0x0208, B:71:0x020e, B:73:0x021c, B:75:0x022a, B:78:0x0236, B:86:0x02bb, B:88:0x02c5, B:80:0x025f, B:81:0x0278, B:85:0x029e, B:84:0x028b, B:67:0x01de, B:68:0x01fc), top: B:353:0x0155, inners: #0, #1, #4, #6, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:286:0x08c5 A[Catch: all -> 0x0176, TryCatch #3 {all -> 0x0176, blocks: (B:36:0x0155, B:39:0x0164, B:41:0x016c, B:47:0x0179, B:89:0x02f2, B:98:0x0325, B:100:0x0366, B:102:0x036b, B:103:0x0382, B:105:0x038d, B:107:0x03a6, B:109:0x03ab, B:110:0x03c2, B:113:0x03e4, B:117:0x0407, B:118:0x041e, B:120:0x042a, B:123:0x0447, B:124:0x045b, B:126:0x0463, B:128:0x046f, B:130:0x0475, B:131:0x047c, B:133:0x0489, B:135:0x0491, B:137:0x0499, B:139:0x04a1, B:140:0x04ad, B:141:0x04ba, B:147:0x04fc, B:148:0x0511, B:150:0x0533, B:153:0x054a, B:156:0x0585, B:158:0x05b0, B:160:0x05e8, B:161:0x05eb, B:163:0x05f3, B:164:0x05f6, B:166:0x05fe, B:167:0x0601, B:169:0x0609, B:170:0x060c, B:172:0x0615, B:173:0x0619, B:175:0x0626, B:176:0x0629, B:178:0x0655, B:180:0x065f, B:184:0x0674, B:189:0x0680, B:192:0x0689, B:196:0x0696, B:200:0x06a4, B:204:0x06b2, B:208:0x06c0, B:212:0x06ce, B:216:0x06d9, B:220:0x06e6, B:221:0x06f2, B:223:0x06f8, B:224:0x06fb, B:226:0x071e, B:229:0x0727, B:232:0x0730, B:233:0x074a, B:235:0x0750, B:237:0x0764, B:239:0x0770, B:241:0x077d, B:244:0x0796, B:245:0x07a6, B:249:0x07af, B:250:0x07b2, B:252:0x07bf, B:253:0x07c4, B:255:0x07e2, B:257:0x07e6, B:259:0x07f6, B:261:0x0801, B:262:0x080a, B:264:0x0814, B:266:0x0820, B:268:0x082a, B:270:0x0830, B:272:0x083f, B:274:0x0855, B:276:0x085b, B:277:0x0864, B:279:0x0872, B:281:0x08ae, B:283:0x08b8, B:284:0x08bb, B:286:0x08c5, B:288:0x08e1, B:289:0x08ec, B:291:0x0924, B:293:0x092c, B:295:0x0936, B:296:0x0943, B:298:0x094d, B:299:0x095a, B:300:0x0963, B:302:0x0969, B:304:0x09a5, B:306:0x09af, B:308:0x09c1, B:310:0x09c7, B:311:0x0a0c, B:312:0x0a17, B:313:0x0a22, B:315:0x0a28, B:324:0x0a75, B:325:0x0ac0, B:327:0x0ad1, B:341:0x0b32, B:332:0x0ae9, B:333:0x0aec, B:318:0x0a35, B:320:0x0a61, B:338:0x0b05, B:339:0x0b1c, B:340:0x0b1d, B:227:0x0721, B:157:0x05a2, B:144:0x04e3, B:92:0x0306, B:93:0x030d, B:95:0x0313, B:97:0x031f, B:54:0x0191, B:56:0x019d, B:58:0x01b2, B:64:0x01d2, B:69:0x0208, B:71:0x020e, B:73:0x021c, B:75:0x022a, B:78:0x0236, B:86:0x02bb, B:88:0x02c5, B:80:0x025f, B:81:0x0278, B:85:0x029e, B:84:0x028b, B:67:0x01de, B:68:0x01fc), top: B:353:0x0155, inners: #0, #1, #4, #6, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:290:0x0923  */
    /* JADX WARN: Removed duplicated region for block: B:293:0x092c A[Catch: all -> 0x0176, TryCatch #3 {all -> 0x0176, blocks: (B:36:0x0155, B:39:0x0164, B:41:0x016c, B:47:0x0179, B:89:0x02f2, B:98:0x0325, B:100:0x0366, B:102:0x036b, B:103:0x0382, B:105:0x038d, B:107:0x03a6, B:109:0x03ab, B:110:0x03c2, B:113:0x03e4, B:117:0x0407, B:118:0x041e, B:120:0x042a, B:123:0x0447, B:124:0x045b, B:126:0x0463, B:128:0x046f, B:130:0x0475, B:131:0x047c, B:133:0x0489, B:135:0x0491, B:137:0x0499, B:139:0x04a1, B:140:0x04ad, B:141:0x04ba, B:147:0x04fc, B:148:0x0511, B:150:0x0533, B:153:0x054a, B:156:0x0585, B:158:0x05b0, B:160:0x05e8, B:161:0x05eb, B:163:0x05f3, B:164:0x05f6, B:166:0x05fe, B:167:0x0601, B:169:0x0609, B:170:0x060c, B:172:0x0615, B:173:0x0619, B:175:0x0626, B:176:0x0629, B:178:0x0655, B:180:0x065f, B:184:0x0674, B:189:0x0680, B:192:0x0689, B:196:0x0696, B:200:0x06a4, B:204:0x06b2, B:208:0x06c0, B:212:0x06ce, B:216:0x06d9, B:220:0x06e6, B:221:0x06f2, B:223:0x06f8, B:224:0x06fb, B:226:0x071e, B:229:0x0727, B:232:0x0730, B:233:0x074a, B:235:0x0750, B:237:0x0764, B:239:0x0770, B:241:0x077d, B:244:0x0796, B:245:0x07a6, B:249:0x07af, B:250:0x07b2, B:252:0x07bf, B:253:0x07c4, B:255:0x07e2, B:257:0x07e6, B:259:0x07f6, B:261:0x0801, B:262:0x080a, B:264:0x0814, B:266:0x0820, B:268:0x082a, B:270:0x0830, B:272:0x083f, B:274:0x0855, B:276:0x085b, B:277:0x0864, B:279:0x0872, B:281:0x08ae, B:283:0x08b8, B:284:0x08bb, B:286:0x08c5, B:288:0x08e1, B:289:0x08ec, B:291:0x0924, B:293:0x092c, B:295:0x0936, B:296:0x0943, B:298:0x094d, B:299:0x095a, B:300:0x0963, B:302:0x0969, B:304:0x09a5, B:306:0x09af, B:308:0x09c1, B:310:0x09c7, B:311:0x0a0c, B:312:0x0a17, B:313:0x0a22, B:315:0x0a28, B:324:0x0a75, B:325:0x0ac0, B:327:0x0ad1, B:341:0x0b32, B:332:0x0ae9, B:333:0x0aec, B:318:0x0a35, B:320:0x0a61, B:338:0x0b05, B:339:0x0b1c, B:340:0x0b1d, B:227:0x0721, B:157:0x05a2, B:144:0x04e3, B:92:0x0306, B:93:0x030d, B:95:0x0313, B:97:0x031f, B:54:0x0191, B:56:0x019d, B:58:0x01b2, B:64:0x01d2, B:69:0x0208, B:71:0x020e, B:73:0x021c, B:75:0x022a, B:78:0x0236, B:86:0x02bb, B:88:0x02c5, B:80:0x025f, B:81:0x0278, B:85:0x029e, B:84:0x028b, B:67:0x01de, B:68:0x01fc), top: B:353:0x0155, inners: #0, #1, #4, #6, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:298:0x094d A[Catch: all -> 0x0176, TryCatch #3 {all -> 0x0176, blocks: (B:36:0x0155, B:39:0x0164, B:41:0x016c, B:47:0x0179, B:89:0x02f2, B:98:0x0325, B:100:0x0366, B:102:0x036b, B:103:0x0382, B:105:0x038d, B:107:0x03a6, B:109:0x03ab, B:110:0x03c2, B:113:0x03e4, B:117:0x0407, B:118:0x041e, B:120:0x042a, B:123:0x0447, B:124:0x045b, B:126:0x0463, B:128:0x046f, B:130:0x0475, B:131:0x047c, B:133:0x0489, B:135:0x0491, B:137:0x0499, B:139:0x04a1, B:140:0x04ad, B:141:0x04ba, B:147:0x04fc, B:148:0x0511, B:150:0x0533, B:153:0x054a, B:156:0x0585, B:158:0x05b0, B:160:0x05e8, B:161:0x05eb, B:163:0x05f3, B:164:0x05f6, B:166:0x05fe, B:167:0x0601, B:169:0x0609, B:170:0x060c, B:172:0x0615, B:173:0x0619, B:175:0x0626, B:176:0x0629, B:178:0x0655, B:180:0x065f, B:184:0x0674, B:189:0x0680, B:192:0x0689, B:196:0x0696, B:200:0x06a4, B:204:0x06b2, B:208:0x06c0, B:212:0x06ce, B:216:0x06d9, B:220:0x06e6, B:221:0x06f2, B:223:0x06f8, B:224:0x06fb, B:226:0x071e, B:229:0x0727, B:232:0x0730, B:233:0x074a, B:235:0x0750, B:237:0x0764, B:239:0x0770, B:241:0x077d, B:244:0x0796, B:245:0x07a6, B:249:0x07af, B:250:0x07b2, B:252:0x07bf, B:253:0x07c4, B:255:0x07e2, B:257:0x07e6, B:259:0x07f6, B:261:0x0801, B:262:0x080a, B:264:0x0814, B:266:0x0820, B:268:0x082a, B:270:0x0830, B:272:0x083f, B:274:0x0855, B:276:0x085b, B:277:0x0864, B:279:0x0872, B:281:0x08ae, B:283:0x08b8, B:284:0x08bb, B:286:0x08c5, B:288:0x08e1, B:289:0x08ec, B:291:0x0924, B:293:0x092c, B:295:0x0936, B:296:0x0943, B:298:0x094d, B:299:0x095a, B:300:0x0963, B:302:0x0969, B:304:0x09a5, B:306:0x09af, B:308:0x09c1, B:310:0x09c7, B:311:0x0a0c, B:312:0x0a17, B:313:0x0a22, B:315:0x0a28, B:324:0x0a75, B:325:0x0ac0, B:327:0x0ad1, B:341:0x0b32, B:332:0x0ae9, B:333:0x0aec, B:318:0x0a35, B:320:0x0a61, B:338:0x0b05, B:339:0x0b1c, B:340:0x0b1d, B:227:0x0721, B:157:0x05a2, B:144:0x04e3, B:92:0x0306, B:93:0x030d, B:95:0x0313, B:97:0x031f, B:54:0x0191, B:56:0x019d, B:58:0x01b2, B:64:0x01d2, B:69:0x0208, B:71:0x020e, B:73:0x021c, B:75:0x022a, B:78:0x0236, B:86:0x02bb, B:88:0x02c5, B:80:0x025f, B:81:0x0278, B:85:0x029e, B:84:0x028b, B:67:0x01de, B:68:0x01fc), top: B:353:0x0155, inners: #0, #1, #4, #6, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:302:0x0969 A[Catch: all -> 0x0176, TryCatch #3 {all -> 0x0176, blocks: (B:36:0x0155, B:39:0x0164, B:41:0x016c, B:47:0x0179, B:89:0x02f2, B:98:0x0325, B:100:0x0366, B:102:0x036b, B:103:0x0382, B:105:0x038d, B:107:0x03a6, B:109:0x03ab, B:110:0x03c2, B:113:0x03e4, B:117:0x0407, B:118:0x041e, B:120:0x042a, B:123:0x0447, B:124:0x045b, B:126:0x0463, B:128:0x046f, B:130:0x0475, B:131:0x047c, B:133:0x0489, B:135:0x0491, B:137:0x0499, B:139:0x04a1, B:140:0x04ad, B:141:0x04ba, B:147:0x04fc, B:148:0x0511, B:150:0x0533, B:153:0x054a, B:156:0x0585, B:158:0x05b0, B:160:0x05e8, B:161:0x05eb, B:163:0x05f3, B:164:0x05f6, B:166:0x05fe, B:167:0x0601, B:169:0x0609, B:170:0x060c, B:172:0x0615, B:173:0x0619, B:175:0x0626, B:176:0x0629, B:178:0x0655, B:180:0x065f, B:184:0x0674, B:189:0x0680, B:192:0x0689, B:196:0x0696, B:200:0x06a4, B:204:0x06b2, B:208:0x06c0, B:212:0x06ce, B:216:0x06d9, B:220:0x06e6, B:221:0x06f2, B:223:0x06f8, B:224:0x06fb, B:226:0x071e, B:229:0x0727, B:232:0x0730, B:233:0x074a, B:235:0x0750, B:237:0x0764, B:239:0x0770, B:241:0x077d, B:244:0x0796, B:245:0x07a6, B:249:0x07af, B:250:0x07b2, B:252:0x07bf, B:253:0x07c4, B:255:0x07e2, B:257:0x07e6, B:259:0x07f6, B:261:0x0801, B:262:0x080a, B:264:0x0814, B:266:0x0820, B:268:0x082a, B:270:0x0830, B:272:0x083f, B:274:0x0855, B:276:0x085b, B:277:0x0864, B:279:0x0872, B:281:0x08ae, B:283:0x08b8, B:284:0x08bb, B:286:0x08c5, B:288:0x08e1, B:289:0x08ec, B:291:0x0924, B:293:0x092c, B:295:0x0936, B:296:0x0943, B:298:0x094d, B:299:0x095a, B:300:0x0963, B:302:0x0969, B:304:0x09a5, B:306:0x09af, B:308:0x09c1, B:310:0x09c7, B:311:0x0a0c, B:312:0x0a17, B:313:0x0a22, B:315:0x0a28, B:324:0x0a75, B:325:0x0ac0, B:327:0x0ad1, B:341:0x0b32, B:332:0x0ae9, B:333:0x0aec, B:318:0x0a35, B:320:0x0a61, B:338:0x0b05, B:339:0x0b1c, B:340:0x0b1d, B:227:0x0721, B:157:0x05a2, B:144:0x04e3, B:92:0x0306, B:93:0x030d, B:95:0x0313, B:97:0x031f, B:54:0x0191, B:56:0x019d, B:58:0x01b2, B:64:0x01d2, B:69:0x0208, B:71:0x020e, B:73:0x021c, B:75:0x022a, B:78:0x0236, B:86:0x02bb, B:88:0x02c5, B:80:0x025f, B:81:0x0278, B:85:0x029e, B:84:0x028b, B:67:0x01de, B:68:0x01fc), top: B:353:0x0155, inners: #0, #1, #4, #6, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:315:0x0a28 A[Catch: all -> 0x0176, TryCatch #3 {all -> 0x0176, blocks: (B:36:0x0155, B:39:0x0164, B:41:0x016c, B:47:0x0179, B:89:0x02f2, B:98:0x0325, B:100:0x0366, B:102:0x036b, B:103:0x0382, B:105:0x038d, B:107:0x03a6, B:109:0x03ab, B:110:0x03c2, B:113:0x03e4, B:117:0x0407, B:118:0x041e, B:120:0x042a, B:123:0x0447, B:124:0x045b, B:126:0x0463, B:128:0x046f, B:130:0x0475, B:131:0x047c, B:133:0x0489, B:135:0x0491, B:137:0x0499, B:139:0x04a1, B:140:0x04ad, B:141:0x04ba, B:147:0x04fc, B:148:0x0511, B:150:0x0533, B:153:0x054a, B:156:0x0585, B:158:0x05b0, B:160:0x05e8, B:161:0x05eb, B:163:0x05f3, B:164:0x05f6, B:166:0x05fe, B:167:0x0601, B:169:0x0609, B:170:0x060c, B:172:0x0615, B:173:0x0619, B:175:0x0626, B:176:0x0629, B:178:0x0655, B:180:0x065f, B:184:0x0674, B:189:0x0680, B:192:0x0689, B:196:0x0696, B:200:0x06a4, B:204:0x06b2, B:208:0x06c0, B:212:0x06ce, B:216:0x06d9, B:220:0x06e6, B:221:0x06f2, B:223:0x06f8, B:224:0x06fb, B:226:0x071e, B:229:0x0727, B:232:0x0730, B:233:0x074a, B:235:0x0750, B:237:0x0764, B:239:0x0770, B:241:0x077d, B:244:0x0796, B:245:0x07a6, B:249:0x07af, B:250:0x07b2, B:252:0x07bf, B:253:0x07c4, B:255:0x07e2, B:257:0x07e6, B:259:0x07f6, B:261:0x0801, B:262:0x080a, B:264:0x0814, B:266:0x0820, B:268:0x082a, B:270:0x0830, B:272:0x083f, B:274:0x0855, B:276:0x085b, B:277:0x0864, B:279:0x0872, B:281:0x08ae, B:283:0x08b8, B:284:0x08bb, B:286:0x08c5, B:288:0x08e1, B:289:0x08ec, B:291:0x0924, B:293:0x092c, B:295:0x0936, B:296:0x0943, B:298:0x094d, B:299:0x095a, B:300:0x0963, B:302:0x0969, B:304:0x09a5, B:306:0x09af, B:308:0x09c1, B:310:0x09c7, B:311:0x0a0c, B:312:0x0a17, B:313:0x0a22, B:315:0x0a28, B:324:0x0a75, B:325:0x0ac0, B:327:0x0ad1, B:341:0x0b32, B:332:0x0ae9, B:333:0x0aec, B:318:0x0a35, B:320:0x0a61, B:338:0x0b05, B:339:0x0b1c, B:340:0x0b1d, B:227:0x0721, B:157:0x05a2, B:144:0x04e3, B:92:0x0306, B:93:0x030d, B:95:0x0313, B:97:0x031f, B:54:0x0191, B:56:0x019d, B:58:0x01b2, B:64:0x01d2, B:69:0x0208, B:71:0x020e, B:73:0x021c, B:75:0x022a, B:78:0x0236, B:86:0x02bb, B:88:0x02c5, B:80:0x025f, B:81:0x0278, B:85:0x029e, B:84:0x028b, B:67:0x01de, B:68:0x01fc), top: B:353:0x0155, inners: #0, #1, #4, #6, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:327:0x0ad1 A[Catch: all -> 0x0176, SQLiteException -> 0x0ae5, TRY_LEAVE, TryCatch #4 {SQLiteException -> 0x0ae5, blocks: (B:325:0x0ac0, B:327:0x0ad1), top: B:354:0x0ac0, outer: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:331:0x0ae7  */
    /* JADX WARN: Removed duplicated region for block: B:381:0x0a35 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x02c5 A[Catch: all -> 0x0176, TryCatch #3 {all -> 0x0176, blocks: (B:36:0x0155, B:39:0x0164, B:41:0x016c, B:47:0x0179, B:89:0x02f2, B:98:0x0325, B:100:0x0366, B:102:0x036b, B:103:0x0382, B:105:0x038d, B:107:0x03a6, B:109:0x03ab, B:110:0x03c2, B:113:0x03e4, B:117:0x0407, B:118:0x041e, B:120:0x042a, B:123:0x0447, B:124:0x045b, B:126:0x0463, B:128:0x046f, B:130:0x0475, B:131:0x047c, B:133:0x0489, B:135:0x0491, B:137:0x0499, B:139:0x04a1, B:140:0x04ad, B:141:0x04ba, B:147:0x04fc, B:148:0x0511, B:150:0x0533, B:153:0x054a, B:156:0x0585, B:158:0x05b0, B:160:0x05e8, B:161:0x05eb, B:163:0x05f3, B:164:0x05f6, B:166:0x05fe, B:167:0x0601, B:169:0x0609, B:170:0x060c, B:172:0x0615, B:173:0x0619, B:175:0x0626, B:176:0x0629, B:178:0x0655, B:180:0x065f, B:184:0x0674, B:189:0x0680, B:192:0x0689, B:196:0x0696, B:200:0x06a4, B:204:0x06b2, B:208:0x06c0, B:212:0x06ce, B:216:0x06d9, B:220:0x06e6, B:221:0x06f2, B:223:0x06f8, B:224:0x06fb, B:226:0x071e, B:229:0x0727, B:232:0x0730, B:233:0x074a, B:235:0x0750, B:237:0x0764, B:239:0x0770, B:241:0x077d, B:244:0x0796, B:245:0x07a6, B:249:0x07af, B:250:0x07b2, B:252:0x07bf, B:253:0x07c4, B:255:0x07e2, B:257:0x07e6, B:259:0x07f6, B:261:0x0801, B:262:0x080a, B:264:0x0814, B:266:0x0820, B:268:0x082a, B:270:0x0830, B:272:0x083f, B:274:0x0855, B:276:0x085b, B:277:0x0864, B:279:0x0872, B:281:0x08ae, B:283:0x08b8, B:284:0x08bb, B:286:0x08c5, B:288:0x08e1, B:289:0x08ec, B:291:0x0924, B:293:0x092c, B:295:0x0936, B:296:0x0943, B:298:0x094d, B:299:0x095a, B:300:0x0963, B:302:0x0969, B:304:0x09a5, B:306:0x09af, B:308:0x09c1, B:310:0x09c7, B:311:0x0a0c, B:312:0x0a17, B:313:0x0a22, B:315:0x0a28, B:324:0x0a75, B:325:0x0ac0, B:327:0x0ad1, B:341:0x0b32, B:332:0x0ae9, B:333:0x0aec, B:318:0x0a35, B:320:0x0a61, B:338:0x0b05, B:339:0x0b1c, B:340:0x0b1d, B:227:0x0721, B:157:0x05a2, B:144:0x04e3, B:92:0x0306, B:93:0x030d, B:95:0x0313, B:97:0x031f, B:54:0x0191, B:56:0x019d, B:58:0x01b2, B:64:0x01d2, B:69:0x0208, B:71:0x020e, B:73:0x021c, B:75:0x022a, B:78:0x0236, B:86:0x02bb, B:88:0x02c5, B:80:0x025f, B:81:0x0278, B:85:0x029e, B:84:0x028b, B:67:0x01de, B:68:0x01fc), top: B:353:0x0155, inners: #0, #1, #4, #6, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0303  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0306 A[Catch: all -> 0x0176, TryCatch #3 {all -> 0x0176, blocks: (B:36:0x0155, B:39:0x0164, B:41:0x016c, B:47:0x0179, B:89:0x02f2, B:98:0x0325, B:100:0x0366, B:102:0x036b, B:103:0x0382, B:105:0x038d, B:107:0x03a6, B:109:0x03ab, B:110:0x03c2, B:113:0x03e4, B:117:0x0407, B:118:0x041e, B:120:0x042a, B:123:0x0447, B:124:0x045b, B:126:0x0463, B:128:0x046f, B:130:0x0475, B:131:0x047c, B:133:0x0489, B:135:0x0491, B:137:0x0499, B:139:0x04a1, B:140:0x04ad, B:141:0x04ba, B:147:0x04fc, B:148:0x0511, B:150:0x0533, B:153:0x054a, B:156:0x0585, B:158:0x05b0, B:160:0x05e8, B:161:0x05eb, B:163:0x05f3, B:164:0x05f6, B:166:0x05fe, B:167:0x0601, B:169:0x0609, B:170:0x060c, B:172:0x0615, B:173:0x0619, B:175:0x0626, B:176:0x0629, B:178:0x0655, B:180:0x065f, B:184:0x0674, B:189:0x0680, B:192:0x0689, B:196:0x0696, B:200:0x06a4, B:204:0x06b2, B:208:0x06c0, B:212:0x06ce, B:216:0x06d9, B:220:0x06e6, B:221:0x06f2, B:223:0x06f8, B:224:0x06fb, B:226:0x071e, B:229:0x0727, B:232:0x0730, B:233:0x074a, B:235:0x0750, B:237:0x0764, B:239:0x0770, B:241:0x077d, B:244:0x0796, B:245:0x07a6, B:249:0x07af, B:250:0x07b2, B:252:0x07bf, B:253:0x07c4, B:255:0x07e2, B:257:0x07e6, B:259:0x07f6, B:261:0x0801, B:262:0x080a, B:264:0x0814, B:266:0x0820, B:268:0x082a, B:270:0x0830, B:272:0x083f, B:274:0x0855, B:276:0x085b, B:277:0x0864, B:279:0x0872, B:281:0x08ae, B:283:0x08b8, B:284:0x08bb, B:286:0x08c5, B:288:0x08e1, B:289:0x08ec, B:291:0x0924, B:293:0x092c, B:295:0x0936, B:296:0x0943, B:298:0x094d, B:299:0x095a, B:300:0x0963, B:302:0x0969, B:304:0x09a5, B:306:0x09af, B:308:0x09c1, B:310:0x09c7, B:311:0x0a0c, B:312:0x0a17, B:313:0x0a22, B:315:0x0a28, B:324:0x0a75, B:325:0x0ac0, B:327:0x0ad1, B:341:0x0b32, B:332:0x0ae9, B:333:0x0aec, B:318:0x0a35, B:320:0x0a61, B:338:0x0b05, B:339:0x0b1c, B:340:0x0b1d, B:227:0x0721, B:157:0x05a2, B:144:0x04e3, B:92:0x0306, B:93:0x030d, B:95:0x0313, B:97:0x031f, B:54:0x0191, B:56:0x019d, B:58:0x01b2, B:64:0x01d2, B:69:0x0208, B:71:0x020e, B:73:0x021c, B:75:0x022a, B:78:0x0236, B:86:0x02bb, B:88:0x02c5, B:80:0x025f, B:81:0x0278, B:85:0x029e, B:84:0x028b, B:67:0x01de, B:68:0x01fc), top: B:353:0x0155, inners: #0, #1, #4, #6, #7 }] */
    /* JADX WARN: Type inference failed for: r5v46 */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v6, types: [boolean, int] */
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzH(com.google.android.gms.measurement.internal.zzbg r45, com.google.android.gms.measurement.internal.zzr r46) {
        /*
            Method dump skipped, instructions count: 2923
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzpg.zzH(com.google.android.gms.measurement.internal.zzbg, com.google.android.gms.measurement.internal.zzr):void");
    }

    @WorkerThread
    public final void zzI(zzh zzhVar, com.google.android.gms.internal.measurement.zzic zzicVar) {
        com.google.android.gms.internal.measurement.zziu zziuVar;
        zzaW().zzg();
        zzu();
        zzan zzd = zzan.zzd(zzicVar.zzaA());
        String zzc = zzhVar.zzc();
        zzaW().zzg();
        zzu();
        zzjl zzB = zzB(zzc);
        zzji zzjiVar = zzji.UNINITIALIZED;
        int ordinal = zzB.zzp().ordinal();
        if (ordinal != 1) {
            if (ordinal != 2 && ordinal != 3) {
                zzd.zzc(zzjk.AD_STORAGE, zzam.FAILSAFE);
            } else {
                zzd.zzb(zzjk.AD_STORAGE, zzB.zzb());
            }
        } else {
            zzd.zzc(zzjk.AD_STORAGE, zzam.REMOTE_ENFORCED_DEFAULT);
        }
        int ordinal2 = zzB.zzq().ordinal();
        if (ordinal2 != 1) {
            if (ordinal2 != 2 && ordinal2 != 3) {
                zzd.zzc(zzjk.ANALYTICS_STORAGE, zzam.FAILSAFE);
            } else {
                zzd.zzb(zzjk.ANALYTICS_STORAGE, zzB.zzb());
            }
        } else {
            zzd.zzc(zzjk.ANALYTICS_STORAGE, zzam.REMOTE_ENFORCED_DEFAULT);
        }
        String zzc2 = zzhVar.zzc();
        zzaW().zzg();
        zzu();
        zzaz zzz = zzz(zzc2, zzx(zzc2), zzB(zzc2), zzd);
        zzicVar.zzaD(((Boolean) Preconditions.checkNotNull(zzz.zzj())).booleanValue());
        if (!TextUtils.isEmpty(zzz.zzk())) {
            zzicVar.zzaF(zzz.zzk());
        }
        zzaW().zzg();
        zzu();
        Iterator it = zzicVar.zzk().iterator();
        while (true) {
            if (it.hasNext()) {
                zziuVar = (com.google.android.gms.internal.measurement.zziu) it.next();
                if ("_npa".equals(zziuVar.zzc())) {
                    break;
                }
            } else {
                zziuVar = null;
                break;
            }
        }
        if (zziuVar != null) {
            zzjk zzjkVar = zzjk.AD_PERSONALIZATION;
            if (zzd.zza(zzjkVar) == zzam.UNSET) {
                zzpn zzm = zzj().zzm(zzhVar.zzc(), "_npa");
                if (zzm != null) {
                    String str = zzm.zzb;
                    if ("tcf".equals(str)) {
                        zzd.zzc(zzjkVar, zzam.TCF);
                    } else if (MBridgeConstans.DYNAMIC_VIEW_WX_APP.equals(str)) {
                        zzd.zzc(zzjkVar, zzam.API);
                    } else {
                        zzd.zzc(zzjkVar, zzam.MANIFEST);
                    }
                } else {
                    Boolean zzae = zzhVar.zzae();
                    if (zzae != null && ((!zzae.booleanValue() || zziuVar.zzg() == 1) && (zzae.booleanValue() || zziuVar.zzg() == 0))) {
                        zzd.zzc(zzjkVar, zzam.MANIFEST);
                    } else {
                        zzd.zzc(zzjkVar, zzam.API);
                    }
                }
            }
        } else {
            int zzaC = zzaC(zzhVar.zzc(), zzd);
            com.google.android.gms.internal.measurement.zzit zzm2 = com.google.android.gms.internal.measurement.zziu.zzm();
            zzm2.zzb("_npa");
            zzm2.zza(zzaZ().currentTimeMillis());
            zzm2.zze(zzaC);
            zzicVar.zzo((com.google.android.gms.internal.measurement.zziu) zzm2.zzbc());
            zzaV().zzk().zzc("Setting user property", "non_personalized_ads(_npa)", Integer.valueOf(zzaC));
        }
        zzicVar.zzaB(zzd.toString());
        boolean zzy = this.zzc.zzy(zzhVar.zzc());
        List zzb2 = zzicVar.zzb();
        int i = 0;
        for (int i2 = 0; i2 < zzb2.size(); i2++) {
            if ("_tcf".equals(((com.google.android.gms.internal.measurement.zzhs) zzb2.get(i2)).zzd())) {
                com.google.android.gms.internal.measurement.zzhr zzhrVar = (com.google.android.gms.internal.measurement.zzhr) ((com.google.android.gms.internal.measurement.zzhs) zzb2.get(i2)).zzcl();
                List zza = zzhrVar.zza();
                int i3 = 0;
                while (true) {
                    if (i3 >= zza.size()) {
                        break;
                    } else if ("_tcfd".equals(((com.google.android.gms.internal.measurement.zzhw) zza.get(i3)).zzb())) {
                        String zzd2 = ((com.google.android.gms.internal.measurement.zzhw) zza.get(i3)).zzd();
                        if (zzy && zzd2.length() > 4) {
                            char[] charArray = zzd2.toCharArray();
                            int i4 = 1;
                            while (true) {
                                if (i4 >= 64) {
                                    break;
                                } else if (charArray[4] == "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ-_".charAt(i4)) {
                                    i = i4;
                                    break;
                                } else {
                                    i4++;
                                }
                            }
                            charArray[4] = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ-_".charAt(1 | i);
                            zzd2 = String.valueOf(charArray);
                        }
                        com.google.android.gms.internal.measurement.zzhv zzn = com.google.android.gms.internal.measurement.zzhw.zzn();
                        zzn.zzb("_tcfd");
                        zzn.zzd(zzd2);
                        zzhrVar.zze(i3, zzn);
                    } else {
                        i3++;
                    }
                }
                zzicVar.zzf(i2, zzhrVar);
                return;
            }
        }
    }

    @WorkerThread
    public final void zzJ(zzh zzhVar, com.google.android.gms.internal.measurement.zzic zzicVar) {
        zzaW().zzg();
        zzu();
        com.google.android.gms.internal.measurement.zzgx zzr = com.google.android.gms.internal.measurement.zzha.zzr();
        byte[] zzaJ = zzhVar.zzaJ();
        if (zzaJ != null) {
            try {
                zzr = (com.google.android.gms.internal.measurement.zzgx) zzpk.zzw(zzr, zzaJ);
            } catch (com.google.android.gms.internal.measurement.zzmr unused) {
                zzaV().zze().zzb("Failed to parse locally stored ad campaign info. appId", zzgu.zzl(zzhVar.zzc()));
            }
        }
        for (com.google.android.gms.internal.measurement.zzhs zzhsVar : zzicVar.zzb()) {
            if (zzhsVar.zzd().equals(Constants.ScionAnalytics.EVENT_FIREBASE_CAMPAIGN)) {
                String str = (String) zzpk.zzJ(zzhsVar, "gclid", "");
                String str2 = (String) zzpk.zzJ(zzhsVar, "gbraid", "");
                String str3 = (String) zzpk.zzJ(zzhsVar, "gad_source", "");
                String[] split = ((String) zzfy.zzbg.zzb(null)).split(",");
                zzp();
                if (!zzpk.zzG(zzhsVar, split).isEmpty()) {
                    long longValue = ((Long) zzpk.zzJ(zzhsVar, "click_timestamp", 0L)).longValue();
                    if (longValue <= 0) {
                        longValue = zzhsVar.zzf();
                    }
                    if ("referrer API v2".equals(zzpk.zzI(zzhsVar, "_cis"))) {
                        if (longValue > zzr.zzo()) {
                            if (str.isEmpty()) {
                                zzr.zzj();
                            } else {
                                zzr.zzi(str);
                            }
                            if (str2.isEmpty()) {
                                zzr.zzl();
                            } else {
                                zzr.zzk(str2);
                            }
                            if (str3.isEmpty()) {
                                zzr.zzn();
                            } else {
                                zzr.zzm(str3);
                            }
                            zzr.zzp(longValue);
                            zzr.zzs();
                            zzr.zzt(zzaD(zzhsVar));
                        }
                    } else if (longValue > zzr.zzg()) {
                        if (str.isEmpty()) {
                            zzr.zzb();
                        } else {
                            zzr.zza(str);
                        }
                        if (str2.isEmpty()) {
                            zzr.zzd();
                        } else {
                            zzr.zzc(str2);
                        }
                        if (str3.isEmpty()) {
                            zzr.zzf();
                        } else {
                            zzr.zze(str3);
                        }
                        zzr.zzh(longValue);
                        zzr.zzq();
                        zzr.zzr(zzaD(zzhsVar));
                    }
                }
            }
        }
        if (!((com.google.android.gms.internal.measurement.zzha) zzr.zzbc()).equals(com.google.android.gms.internal.measurement.zzha.zzs())) {
            zzicVar.zzaM((com.google.android.gms.internal.measurement.zzha) zzr.zzbc());
        }
        zzhVar.zzaI(((com.google.android.gms.internal.measurement.zzha) zzr.zzbc()).zzcc());
        if (zzhVar.zza()) {
            zzj().zzv(zzhVar, false, false);
        }
        if (zzd().zzp(null, zzfy.zzbf)) {
            zzj().zzk(zzhVar.zzc(), "_lgclid");
        }
    }

    @WorkerThread
    public final String zzK(zzjl zzjlVar) {
        if (zzjlVar.zzo(zzjk.ANALYTICS_STORAGE)) {
            byte[] bArr = new byte[16];
            zzt().zzf().nextBytes(bArr);
            return String.format(Locale.US, "%032x", new BigInteger(1, bArr));
        }
        return null;
    }

    @VisibleForTesting
    public final void zzL(List list) {
        Preconditions.checkArgument(!list.isEmpty());
        if (this.zzz != null) {
            zzaV().zzb().zza("Set uploading progress before finishing the previous upload");
        } else {
            this.zzz = new ArrayList(list);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:43:0x0124, code lost:
        if (r7 == null) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0194, code lost:
        if (r1 == 0) goto L56;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0, types: [com.google.android.gms.measurement.internal.zzpg] */
    /* JADX WARN: Type inference failed for: r1v12, types: [long] */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v18 */
    /* JADX WARN: Type inference failed for: r1v22, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r1v25, types: [android.database.Cursor] */
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzM() {
        /*
            Method dump skipped, instructions count: 444
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzpg.zzM():void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:108:0x022a, code lost:
        if (r10 != null) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:184:0x0484, code lost:
        if (r23 != null) goto L302;
     */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0236  */
    /* JADX WARN: Removed duplicated region for block: B:189:0x0492  */
    /* JADX WARN: Removed duplicated region for block: B:222:0x055c  */
    /* JADX WARN: Removed duplicated region for block: B:375:0x09bd  */
    /* JADX WARN: Removed duplicated region for block: B:383:0x0a0b  */
    /* JADX WARN: Removed duplicated region for block: B:468:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:469:? A[RETURN, SYNTHETIC] */
    @androidx.annotation.VisibleForTesting
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzN(java.lang.String r33, long r34) {
        /*
            Method dump skipped, instructions count: 2575
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzpg.zzN(java.lang.String, long):void");
    }

    @VisibleForTesting
    @WorkerThread
    public final boolean zzO(String str, String str2) {
        zzh zzu = zzj().zzu(str);
        if (zzu != null && zzt().zzaa(str, zzu.zzay())) {
            this.zzF.remove(str2);
            return true;
        }
        zzpe zzpeVar = (zzpe) this.zzF.get(str2);
        if (zzpeVar == null) {
            return true;
        }
        return zzpeVar.zzb();
    }

    @WorkerThread
    public final void zzP(String str) {
        zzpj zzpjVar;
        com.google.android.gms.internal.measurement.zzib zzd;
        zzaW().zzg();
        zzu();
        this.zzw = true;
        try {
            zzic zzicVar = this.zzn;
            zzicVar.zzaU();
            Boolean zzJ = zzicVar.zzt().zzJ();
            if (zzJ == null) {
                zzaV().zze().zza("Upload data called on the client side before use of service was decided");
            } else if (zzJ.booleanValue()) {
                zzaV().zzb().zza("Upload called in the client side when service should be used");
            } else if (this.zza > 0) {
                zzaL();
            } else if (!zzi().zzb()) {
                zzaV().zzk().zza("Network not connected, ignoring upload request");
                zzaL();
            } else if (!zzj().zzD(str)) {
                zzaV().zzk().zzb("[sgtm] Upload queue has no batches for appId", str);
            } else {
                zzav zzj = zzj();
                Preconditions.checkNotEmpty(str);
                zzj.zzg();
                zzj.zzaw();
                List zzC = zzj.zzC(str, zzoo.zza(zzls.GOOGLE_SIGNAL), 1);
                if (zzC.isEmpty()) {
                    zzpjVar = null;
                } else {
                    zzpjVar = (zzpj) zzC.get(0);
                }
                if (zzpjVar != null && (zzd = zzpjVar.zzd()) != null) {
                    zzaV().zzk().zzd("[sgtm] Uploading data from upload queue. appId, type, url", str, zzpjVar.zzf(), zzpjVar.zze());
                    byte[] zzcc = zzd.zzcc();
                    if (Log.isLoggable(zzaV().zzn(), 2)) {
                        zzaV().zzk().zzd("[sgtm] Uploading data from upload queue. appId, uncompressed size, data", str, Integer.valueOf(zzcc.length), zzp().zzi(zzd));
                    }
                    zzot zza = zzpjVar.zza();
                    this.zzv = true;
                    zzi().zzc(str, zza, zzd, new zzox(this, str, zzpjVar));
                }
            }
            this.zzw = false;
            zzaM();
        } catch (Throwable th) {
            this.zzw = false;
            zzaM();
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x007f  */
    @androidx.annotation.VisibleForTesting
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzQ(@androidx.annotation.NonNull java.lang.String r4, int r5, java.lang.Throwable r6, byte[] r7, com.google.android.gms.measurement.internal.zzpj r8) {
        /*
            r3 = this;
            com.google.android.gms.measurement.internal.zzhz r0 = r3.zzaW()
            r0.zzg()
            r3.zzu()
            r0 = 0
            if (r7 != 0) goto L13
            byte[] r7 = new byte[r0]     // Catch: java.lang.Throwable -> L10
            goto L13
        L10:
            r4 = move-exception
            goto L9b
        L13:
            r1 = 200(0xc8, float:2.8E-43)
            if (r5 == r1) goto L1c
            r1 = 204(0xcc, float:2.86E-43)
            if (r5 != r1) goto L5a
            r5 = r1
        L1c:
            if (r6 != 0) goto L5a
            com.google.android.gms.measurement.internal.zzav r6 = r3.zzj()     // Catch: java.lang.Throwable -> L10
            long r7 = r8.zzc()     // Catch: java.lang.Throwable -> L10
            java.lang.Long r7 = java.lang.Long.valueOf(r7)     // Catch: java.lang.Throwable -> L10
            r6.zzE(r7)     // Catch: java.lang.Throwable -> L10
            com.google.android.gms.measurement.internal.zzgu r6 = r3.zzaV()     // Catch: java.lang.Throwable -> L10
            com.google.android.gms.measurement.internal.zzgs r6 = r6.zzk()     // Catch: java.lang.Throwable -> L10
            java.lang.String r7 = "Successfully uploaded batch from upload queue. appId, status"
            java.lang.Integer r5 = java.lang.Integer.valueOf(r5)     // Catch: java.lang.Throwable -> L10
            r6.zzc(r7, r4, r5)     // Catch: java.lang.Throwable -> L10
            com.google.android.gms.measurement.internal.zzgz r5 = r3.zzi()     // Catch: java.lang.Throwable -> L10
            boolean r5 = r5.zzb()     // Catch: java.lang.Throwable -> L10
            if (r5 == 0) goto L56
            com.google.android.gms.measurement.internal.zzav r5 = r3.zzj()     // Catch: java.lang.Throwable -> L10
            boolean r5 = r5.zzD(r4)     // Catch: java.lang.Throwable -> L10
            if (r5 == 0) goto L56
            r3.zzP(r4)     // Catch: java.lang.Throwable -> L10
            goto L95
        L56:
            r3.zzaL()     // Catch: java.lang.Throwable -> L10
            goto L95
        L5a:
            java.lang.String r1 = new java.lang.String     // Catch: java.lang.Throwable -> L10
            java.nio.charset.Charset r2 = java.nio.charset.StandardCharsets.UTF_8     // Catch: java.lang.Throwable -> L10
            r1.<init>(r7, r2)     // Catch: java.lang.Throwable -> L10
            int r7 = r1.length()     // Catch: java.lang.Throwable -> L10
            r2 = 32
            int r7 = java.lang.Math.min(r2, r7)     // Catch: java.lang.Throwable -> L10
            java.lang.String r7 = r1.substring(r0, r7)     // Catch: java.lang.Throwable -> L10
            com.google.android.gms.measurement.internal.zzgu r1 = r3.zzaV()     // Catch: java.lang.Throwable -> L10
            com.google.android.gms.measurement.internal.zzgs r1 = r1.zzh()     // Catch: java.lang.Throwable -> L10
            java.lang.String r2 = "Network upload failed. Will retry later. appId, status, error"
            java.lang.Integer r5 = java.lang.Integer.valueOf(r5)     // Catch: java.lang.Throwable -> L10
            if (r6 != 0) goto L80
            r6 = r7
        L80:
            r1.zzd(r2, r4, r5, r6)     // Catch: java.lang.Throwable -> L10
            com.google.android.gms.measurement.internal.zzav r4 = r3.zzj()     // Catch: java.lang.Throwable -> L10
            long r5 = r8.zzc()     // Catch: java.lang.Throwable -> L10
            java.lang.Long r5 = java.lang.Long.valueOf(r5)     // Catch: java.lang.Throwable -> L10
            r4.zzK(r5)     // Catch: java.lang.Throwable -> L10
            r3.zzaL()     // Catch: java.lang.Throwable -> L10
        L95:
            r3.zzv = r0
            r3.zzaM()
            return
        L9b:
            r3.zzv = r0
            r3.zzaM()
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzpg.zzQ(java.lang.String, int, java.lang.Throwable, byte[], com.google.android.gms.measurement.internal.zzpj):void");
    }

    @WorkerThread
    public final void zzR(String str, boolean z, Long l, Long l2) {
        zzh zzu = zzj().zzu(str);
        if (zzu != null) {
            zzu.zzar(z);
            zzu.zzat(l);
            zzu.zzav(l2);
            if (zzu.zza()) {
                zzj().zzv(zzu, false, false);
            }
        }
    }

    public final void zzS(String str, com.google.android.gms.internal.measurement.zzic zzicVar) {
        int zzx;
        int indexOf;
        Set zzl = zzh().zzl(str);
        if (zzl != null) {
            zzicVar.zzaw(zzl);
        }
        if (zzh().zzp(str)) {
            zzicVar.zzG();
        }
        if (zzh().zzq(str)) {
            String zzD = zzicVar.zzD();
            if (!TextUtils.isEmpty(zzD) && (indexOf = zzD.indexOf(".")) != -1) {
                zzicVar.zzE(zzD.substring(0, indexOf));
            }
        }
        if (zzh().zzr(str) && (zzx = zzpk.zzx(zzicVar, "_id")) != -1) {
            zzicVar.zzr(zzx);
        }
        if (zzh().zzs(str)) {
            zzicVar.zzan();
        }
        if (zzh().zzt(str)) {
            zzicVar.zzX();
            if (zzB(str).zzo(zzjk.ANALYTICS_STORAGE)) {
                Map map = this.zzE;
                zzpd zzpdVar = (zzpd) map.get(str);
                if (zzpdVar == null || zzpdVar.zzb + zzd().zzl(str, zzfy.zzak) < zzaZ().elapsedRealtime()) {
                    zzpdVar = new zzpd(this, (byte[]) null);
                    map.put(str, zzpdVar);
                }
                zzicVar.zzax(zzpdVar.zza);
            }
        }
        if (zzh().zzu(str)) {
            zzicVar.zzav();
        }
    }

    public final void zzT(com.google.android.gms.internal.measurement.zzic zzicVar, zzpc zzpcVar) {
        for (int i = 0; i < zzicVar.zzc(); i++) {
            com.google.android.gms.internal.measurement.zzhr zzhrVar = (com.google.android.gms.internal.measurement.zzhr) zzicVar.zzd(i).zzcl();
            Iterator it = zzhrVar.zza().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                } else if ("_c".equals(((com.google.android.gms.internal.measurement.zzhw) it.next()).zzb())) {
                    if (zzpcVar.zza.zzar() >= zzd().zzm(zzpcVar.zza.zzA(), zzfy.zzal)) {
                        int zzm = zzd().zzm(zzpcVar.zza.zzA(), zzfy.zzay);
                        String str = null;
                        if (zzm > 0) {
                            if (zzj().zzw(zzC(), zzpcVar.zza.zzA(), false, false, false, false, false, false, true).zzg > zzm) {
                                com.google.android.gms.internal.measurement.zzhv zzn = com.google.android.gms.internal.measurement.zzhw.zzn();
                                zzn.zzb("_tnr");
                                zzn.zzf(1L);
                                zzhrVar.zzf((com.google.android.gms.internal.measurement.zzhw) zzn.zzbc());
                            } else {
                                if (zzd().zzp(zzpcVar.zza.zzA(), zzfy.zzaR)) {
                                    str = zzt().zzaw();
                                    com.google.android.gms.internal.measurement.zzhv zzn2 = com.google.android.gms.internal.measurement.zzhw.zzn();
                                    zzn2.zzb("_tu");
                                    zzn2.zzd(str);
                                    zzhrVar.zzf((com.google.android.gms.internal.measurement.zzhw) zzn2.zzbc());
                                }
                                com.google.android.gms.internal.measurement.zzhv zzn3 = com.google.android.gms.internal.measurement.zzhw.zzn();
                                zzn3.zzb("_tr");
                                zzn3.zzf(1L);
                                zzhrVar.zzf((com.google.android.gms.internal.measurement.zzhw) zzn3.zzbc());
                                zzoh zzf = zzp().zzf(zzpcVar.zza.zzA(), zzicVar, zzhrVar, str);
                                if (zzf != null) {
                                    zzaV().zzk().zzc("Generated trigger URI. appId, uri", zzpcVar.zza.zzA(), zzf.zza);
                                    zzj().zzY(zzpcVar.zza.zzA(), zzf);
                                    Deque deque = this.zzr;
                                    if (!deque.contains(zzpcVar.zza.zzA())) {
                                        deque.add(zzpcVar.zza.zzA());
                                    }
                                }
                            }
                        } else {
                            if (zzd().zzp(zzpcVar.zza.zzA(), zzfy.zzaR)) {
                                str = zzt().zzaw();
                                com.google.android.gms.internal.measurement.zzhv zzn4 = com.google.android.gms.internal.measurement.zzhw.zzn();
                                zzn4.zzb("_tu");
                                zzn4.zzd(str);
                                zzhrVar.zzf((com.google.android.gms.internal.measurement.zzhw) zzn4.zzbc());
                            }
                            com.google.android.gms.internal.measurement.zzhv zzn5 = com.google.android.gms.internal.measurement.zzhw.zzn();
                            zzn5.zzb("_tr");
                            zzn5.zzf(1L);
                            zzhrVar.zzf((com.google.android.gms.internal.measurement.zzhw) zzn5.zzbc());
                            zzoh zzf2 = zzp().zzf(zzpcVar.zza.zzA(), zzicVar, zzhrVar, str);
                            if (zzf2 != null) {
                                zzaV().zzk().zzc("Generated trigger URI. appId, uri", zzpcVar.zza.zzA(), zzf2.zza);
                                zzj().zzY(zzpcVar.zza.zzA(), zzf2);
                                Deque deque2 = this.zzr;
                                if (!deque2.contains(zzpcVar.zza.zzA())) {
                                    deque2.add(zzpcVar.zza.zzA());
                                }
                            }
                        }
                    }
                    zzicVar.zze(i, (com.google.android.gms.internal.measurement.zzhs) zzhrVar.zzbc());
                }
            }
        }
    }

    @VisibleForTesting
    public final void zzU(String str, com.google.android.gms.internal.measurement.zzhv zzhvVar, Bundle bundle, String str2) {
        int zzf;
        List listOf = CollectionUtils.listOf((Object[]) new String[]{"_o", "_sn", "_sc", "_si"});
        if (!zzpp.zzZ(zzhvVar.zza()) && !zzpp.zzZ(str)) {
            zzf = zzd().zze(str2, true);
        } else {
            zzf = zzd().zzf(str2, true);
        }
        long j = zzf;
        long codePointCount = zzhvVar.zzc().codePointCount(0, zzhvVar.zzc().length());
        zzpp zzt = zzt();
        String zza = zzhvVar.zza();
        zzd();
        String zzC = zzt.zzC(zza, 40, true);
        if (codePointCount > j && !listOf.contains(zzhvVar.zza())) {
            if ("_ev".equals(zzhvVar.zza())) {
                bundle.putString("_ev", zzt().zzC(zzhvVar.zzc(), zzd().zzf(str2, true), true));
                return;
            }
            zzaV().zzh().zzc("Param value is too long; discarded. Name, value length", zzC, Long.valueOf(codePointCount));
            if (bundle.getLong("_err") == 0) {
                bundle.putLong("_err", 4L);
                if (bundle.getString("_ev") == null) {
                    bundle.putString("_ev", zzC);
                    bundle.putLong("_el", codePointCount);
                }
            }
            bundle.remove(zzhvVar.zza());
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0033, code lost:
        if (r22 != null) goto L11;
     */
    @androidx.annotation.VisibleForTesting
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzV(boolean r20, int r21, java.lang.Throwable r22, byte[] r23, java.lang.String r24, java.util.List r25) {
        /*
            Method dump skipped, instructions count: 670
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzpg.zzV(boolean, int, java.lang.Throwable, byte[], java.lang.String, java.util.List):void");
    }

    @WorkerThread
    public final void zzW(zzh zzhVar) {
        zzaW().zzg();
        if (TextUtils.isEmpty(zzhVar.zzf())) {
            zzX((String) Preconditions.checkNotNull(zzhVar.zzc()), 204, null, null, null);
            return;
        }
        String str = (String) Preconditions.checkNotNull(zzhVar.zzc());
        zzaV().zzk().zzb("Fetching remote configuration", str);
        com.google.android.gms.internal.measurement.zzgl zzb2 = zzh().zzb(str);
        String zzd = zzh().zzd(str);
        ArrayMap arrayMap = null;
        if (zzb2 != null) {
            if (!TextUtils.isEmpty(zzd)) {
                arrayMap = new ArrayMap();
                arrayMap.put(HttpHeaders.IF_MODIFIED_SINCE, zzd);
            }
            String zze = zzh().zze(str);
            if (!TextUtils.isEmpty(zze)) {
                if (arrayMap == null) {
                    arrayMap = new ArrayMap();
                }
                arrayMap.put(HttpHeaders.IF_NONE_MATCH, zze);
            }
        }
        this.zzu = true;
        zzi().zzd(zzhVar, arrayMap, new zzgw() { // from class: com.google.android.gms.measurement.internal.zzpf
            @Override // com.google.android.gms.measurement.internal.zzgw
            public final /* synthetic */ void zza(String str2, int i, Throwable th, byte[] bArr, Map map) {
                zzpg.this.zzX(str2, i, th, bArr, map);
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x004c A[Catch: all -> 0x005f, TryCatch #2 {all -> 0x0013, blocks: (B:4:0x0010, B:7:0x0016, B:55:0x015a, B:8:0x002f, B:18:0x004c, B:54:0x0153, B:25:0x0069, B:30:0x00b9, B:29:0x00aa, B:31:0x00be, B:35:0x00cf, B:39:0x00e9, B:41:0x00fd, B:43:0x011c, B:45:0x0126, B:47:0x012c, B:48:0x0130, B:50:0x013a, B:52:0x0148, B:53:0x0150, B:42:0x010b, B:36:0x00d7, B:38:0x00e1), top: B:62:0x0010 }] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00fd A[Catch: all -> 0x005f, TryCatch #2 {all -> 0x0013, blocks: (B:4:0x0010, B:7:0x0016, B:55:0x015a, B:8:0x002f, B:18:0x004c, B:54:0x0153, B:25:0x0069, B:30:0x00b9, B:29:0x00aa, B:31:0x00be, B:35:0x00cf, B:39:0x00e9, B:41:0x00fd, B:43:0x011c, B:45:0x0126, B:47:0x012c, B:48:0x0130, B:50:0x013a, B:52:0x0148, B:53:0x0150, B:42:0x010b, B:36:0x00d7, B:38:0x00e1), top: B:62:0x0010 }] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x010b A[Catch: all -> 0x005f, TryCatch #2 {all -> 0x0013, blocks: (B:4:0x0010, B:7:0x0016, B:55:0x015a, B:8:0x002f, B:18:0x004c, B:54:0x0153, B:25:0x0069, B:30:0x00b9, B:29:0x00aa, B:31:0x00be, B:35:0x00cf, B:39:0x00e9, B:41:0x00fd, B:43:0x011c, B:45:0x0126, B:47:0x012c, B:48:0x0130, B:50:0x013a, B:52:0x0148, B:53:0x0150, B:42:0x010b, B:36:0x00d7, B:38:0x00e1), top: B:62:0x0010 }] */
    @androidx.annotation.VisibleForTesting
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzX(java.lang.String r7, int r8, java.lang.Throwable r9, byte[] r10, java.util.Map r11) {
        /*
            Method dump skipped, instructions count: 373
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzpg.zzX(java.lang.String, int, java.lang.Throwable, byte[], java.util.Map):void");
    }

    @WorkerThread
    public final void zzY(Runnable runnable) {
        zzaW().zzg();
        if (this.zzq == null) {
            this.zzq = new ArrayList();
        }
        this.zzq.add(runnable);
    }

    @WorkerThread
    public final void zzZ() {
        zzaW().zzg();
        zzu();
        if (!this.zzp) {
            this.zzp = true;
            if (zzaa()) {
                FileChannel fileChannel = this.zzy;
                zzaW().zzg();
                int i = 0;
                if (fileChannel != null && fileChannel.isOpen()) {
                    ByteBuffer allocate = ByteBuffer.allocate(4);
                    try {
                        fileChannel.position(0L);
                        int read = fileChannel.read(allocate);
                        if (read != 4) {
                            if (read != -1) {
                                zzaV().zze().zzb("Unexpected data length. Bytes read", Integer.valueOf(read));
                            }
                        } else {
                            allocate.flip();
                            i = allocate.getInt();
                        }
                    } catch (IOException e) {
                        zzaV().zzb().zzb("Failed to read from channel", e);
                    }
                } else {
                    zzaV().zzb().zza("Bad channel to read from");
                }
                int zzm = this.zzn.zzv().zzm();
                zzaW().zzg();
                if (i > zzm) {
                    zzaV().zzb().zzc("Panic: can't downgrade version. Previous, current version", Integer.valueOf(i), Integer.valueOf(zzm));
                } else if (i < zzm) {
                    FileChannel fileChannel2 = this.zzy;
                    zzaW().zzg();
                    if (fileChannel2 != null && fileChannel2.isOpen()) {
                        ByteBuffer allocate2 = ByteBuffer.allocate(4);
                        allocate2.putInt(zzm);
                        allocate2.flip();
                        try {
                            fileChannel2.truncate(0L);
                            fileChannel2.write(allocate2);
                            fileChannel2.force(true);
                            if (fileChannel2.size() != 4) {
                                zzaV().zzb().zzb("Error writing to channel. Bytes written", Long.valueOf(fileChannel2.size()));
                            }
                            zzaV().zzk().zzc("Storage version upgraded. Previous, current version", Integer.valueOf(i), Integer.valueOf(zzm));
                            return;
                        } catch (IOException e2) {
                            zzaV().zzb().zzb("Failed to write to channel", e2);
                        }
                    } else {
                        zzaV().zzb().zza("Bad channel to read from");
                    }
                    zzaV().zzb().zzc("Storage version upgrade failed. Previous, current version", Integer.valueOf(i), Integer.valueOf(zzm));
                }
            }
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzjg
    public final zzae zzaU() {
        return this.zzn.zzaU();
    }

    @Override // com.google.android.gms.measurement.internal.zzjg
    public final zzgu zzaV() {
        return ((zzic) Preconditions.checkNotNull(this.zzn)).zzaV();
    }

    @Override // com.google.android.gms.measurement.internal.zzjg
    public final zzhz zzaW() {
        return ((zzic) Preconditions.checkNotNull(this.zzn)).zzaW();
    }

    @Override // com.google.android.gms.measurement.internal.zzjg
    public final Context zzaY() {
        return this.zzn.zzaY();
    }

    @Override // com.google.android.gms.measurement.internal.zzjg
    public final Clock zzaZ() {
        return ((zzic) Preconditions.checkNotNull(this.zzn)).zzaZ();
    }

    @VisibleForTesting
    @WorkerThread
    public final boolean zzaa() {
        zzaW().zzg();
        FileLock fileLock = this.zzx;
        if (fileLock != null && fileLock.isValid()) {
            zzaV().zzk().zza("Storage concurrent access okay");
            return true;
        }
        this.zze.zzu.zzc();
        File filesDir = this.zzn.zzaY().getFilesDir();
        com.google.android.gms.internal.measurement.zzbv.zza();
        int i = com.google.android.gms.internal.measurement.zzca.zzb;
        try {
            FileChannel channel = new RandomAccessFile(new File(new File(filesDir, "google_app_measurement.db").getPath()), "rw").getChannel();
            this.zzy = channel;
            FileLock tryLock = channel.tryLock();
            this.zzx = tryLock;
            if (tryLock != null) {
                zzaV().zzk().zza("Storage concurrent access okay");
                return true;
            }
            zzaV().zzb().zza("Storage concurrent data access panic");
            return false;
        } catch (FileNotFoundException e) {
            zzaV().zzb().zzb("Failed to acquire storage lock", e);
            return false;
        } catch (IOException e2) {
            zzaV().zzb().zzb("Failed to access storage lock file", e2);
            return false;
        } catch (OverlappingFileLockException e3) {
            zzaV().zze().zzb("Storage lock already acquired", e3);
            return false;
        }
    }

    @VisibleForTesting(otherwise = 4)
    @WorkerThread
    public final void zzab(zzr zzrVar) {
        if (this.zzz != null) {
            ArrayList arrayList = new ArrayList();
            this.zzA = arrayList;
            arrayList.addAll(this.zzz);
        }
        zzav zzj = zzj();
        String str = (String) Preconditions.checkNotNull(zzrVar.zza);
        Preconditions.checkNotEmpty(str);
        zzj.zzg();
        zzj.zzaw();
        try {
            SQLiteDatabase zze = zzj.zze();
            String[] strArr = {str};
            int delete = zze.delete("apps", "app_id=?", strArr) + zze.delete(DbParams.TABLE_EVENTS, "app_id=?", strArr) + zze.delete("events_snapshot", "app_id=?", strArr) + zze.delete("user_attributes", "app_id=?", strArr) + zze.delete("conditional_properties", "app_id=?", strArr) + zze.delete("raw_events", "app_id=?", strArr) + zze.delete("raw_events_metadata", "app_id=?", strArr) + zze.delete("queue", "app_id=?", strArr) + zze.delete("audience_filter_values", "app_id=?", strArr) + zze.delete("main_event_params", "app_id=?", strArr) + zze.delete("default_event_params", "app_id=?", strArr) + zze.delete("trigger_uris", "app_id=?", strArr) + zze.delete("upload_queue", "app_id=?", strArr);
            com.google.android.gms.internal.measurement.zzpo.zza();
            zzic zzicVar = zzj.zzu;
            if (zzicVar.zzc().zzp(null, zzfy.zzbh)) {
                delete += zze.delete("no_data_mode_events", "app_id=?", strArr);
            }
            if (delete > 0) {
                zzicVar.zzaV().zzk().zzc("Reset analytics data. app, records", str, Integer.valueOf(delete));
            }
        } catch (SQLiteException e) {
            zzj.zzu.zzaV().zzb().zzc("Error resetting analytics data. appId, error", zzgu.zzl(str), e);
        }
        if (zzrVar.zzh) {
            zzah(zzrVar);
        }
    }

    @WorkerThread
    public final void zzac(zzpl zzplVar, zzr zzrVar) {
        zzpn zzm;
        long j;
        zzaW().zzg();
        zzu();
        if (zzaR(zzrVar)) {
            if (!zzrVar.zzh) {
                zzao(zzrVar);
                return;
            }
            zzpp zzt = zzt();
            String str = zzplVar.zzb;
            int zzp = zzt.zzp(str);
            int i = 0;
            if (zzp != 0) {
                zzpp zzt2 = zzt();
                zzd();
                String zzC = zzt2.zzC(str, 24, true);
                if (str != null) {
                    i = str.length();
                }
                zzt().zzN(this.zzK, zzrVar.zza, zzp, "_ev", zzC, i);
                return;
            }
            int zzK = zzt().zzK(str, zzplVar.zza());
            if (zzK != 0) {
                zzpp zzt3 = zzt();
                zzd();
                String zzC2 = zzt3.zzC(str, 24, true);
                Object zza = zzplVar.zza();
                if (zza != null && ((zza instanceof String) || (zza instanceof CharSequence))) {
                    i = zza.toString().length();
                }
                zzt().zzN(this.zzK, zzrVar.zza, zzK, "_ev", zzC2, i);
                return;
            }
            Object zzL = zzt().zzL(str, zzplVar.zza());
            if (zzL != null) {
                if ("_sid".equals(str)) {
                    long j2 = zzplVar.zzc;
                    String str2 = zzplVar.zzf;
                    String str3 = (String) Preconditions.checkNotNull(zzrVar.zza);
                    zzpn zzm2 = zzj().zzm(str3, "_sno");
                    if (zzm2 != null) {
                        Object obj = zzm2.zze;
                        if (obj instanceof Long) {
                            j = ((Long) obj).longValue();
                            zzac(new zzpl("_sno", j2, Long.valueOf(j + 1), str2), zzrVar);
                        }
                    }
                    if (zzm2 != null) {
                        zzaV().zze().zzb("Retrieved last session number from database does not contain a valid (long) value", zzm2.zze);
                    }
                    zzbc zzf = zzj().zzf(str3, "_s");
                    if (zzf != null) {
                        zzgs zzk = zzaV().zzk();
                        long j3 = zzf.zzc;
                        zzk.zzb("Backfill the session number. Last used session number", Long.valueOf(j3));
                        j = j3;
                    } else {
                        j = 0;
                    }
                    zzac(new zzpl("_sno", j2, Long.valueOf(j + 1), str2), zzrVar);
                }
                String str4 = zzrVar.zza;
                zzpn zzpnVar = new zzpn((String) Preconditions.checkNotNull(str4), (String) Preconditions.checkNotNull(zzplVar.zzf), str, zzplVar.zzc, zzL);
                zzgs zzk2 = zzaV().zzk();
                zzic zzicVar = this.zzn;
                String str5 = zzpnVar.zzc;
                zzk2.zzc("Setting user property", zzicVar.zzl().zzc(str5), zzL);
                zzj().zzb();
                try {
                    if ("_id".equals(str5) && (zzm = zzj().zzm(str4, "_id")) != null && !zzpnVar.zze.equals(zzm.zze)) {
                        zzj().zzk(str4, "_lair");
                    }
                    zzao(zzrVar);
                    boolean zzl = zzj().zzl(zzpnVar);
                    if ("_sid".equals(str)) {
                        long zzu = zzp().zzu(zzrVar.zzu);
                        zzh zzu2 = zzj().zzu(str4);
                        if (zzu2 != null) {
                            zzu2.zzan(zzu);
                            if (zzu2.zza()) {
                                zzj().zzv(zzu2, false, false);
                            }
                        }
                    }
                    zzj().zzc();
                    if (!zzl) {
                        zzaV().zzb().zzc("Too many unique user properties are set. Ignoring user property", zzicVar.zzl().zzc(str5), zzpnVar.zze);
                        zzt().zzN(this.zzK, str4, 9, null, null, 0);
                    }
                    zzj().zzd();
                } catch (Throwable th) {
                    zzj().zzd();
                    throw th;
                }
            }
        }
    }

    @WorkerThread
    public final void zzad(String str, zzr zzrVar) {
        long j;
        zzaW().zzg();
        zzu();
        if (!zzaR(zzrVar)) {
            return;
        }
        if (!zzrVar.zzh) {
            zzao(zzrVar);
            return;
        }
        Boolean zzaT = zzaT(zzrVar);
        if ("_npa".equals(str) && zzaT != null) {
            zzaV().zzj().zza("Falling back to manifest metadata value for ad personalization");
            long currentTimeMillis = zzaZ().currentTimeMillis();
            if (true != zzaT.booleanValue()) {
                j = 0;
            } else {
                j = 1;
            }
            zzac(new zzpl("_npa", currentTimeMillis, Long.valueOf(j), "auto"), zzrVar);
            return;
        }
        zzgs zzj = zzaV().zzj();
        zzic zzicVar = this.zzn;
        zzj.zzb("Removing user property", zzicVar.zzl().zzc(str));
        zzj().zzb();
        try {
            zzao(zzrVar);
            if ("_id".equals(str)) {
                zzj().zzk((String) Preconditions.checkNotNull(zzrVar.zza), "_lair");
            }
            zzj().zzk((String) Preconditions.checkNotNull(zzrVar.zza), str);
            zzj().zzc();
            zzaV().zzj().zzb("User property removed", zzicVar.zzl().zzc(str));
            zzj().zzd();
        } catch (Throwable th) {
            zzj().zzd();
            throw th;
        }
    }

    public final void zzae() {
        this.zzs++;
    }

    public final void zzaf() {
        this.zzt++;
    }

    public final zzic zzag() {
        return this.zzn;
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x00c0, code lost:
        if (true == r12.booleanValue()) goto L154;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00c2, code lost:
        r23 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00c5, code lost:
        r23 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00c7, code lost:
        r15 = new com.google.android.gms.measurement.internal.zzpl("_npa", r17, java.lang.Long.valueOf(r23), "auto");
        r24 = 1;
        r12 = r17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00da, code lost:
        if (r11 == null) goto L153;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00e4, code lost:
        if (r11.zze.equals(r15.zzd) != false) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00e6, code lost:
        zzac(r15, r28);
     */
    /* JADX WARN: Removed duplicated region for block: B:149:0x040b A[Catch: all -> 0x00b3, TryCatch #0 {all -> 0x00b3, blocks: (B:24:0x0095, B:26:0x00a3, B:45:0x00f3, B:47:0x0100, B:49:0x0109, B:51:0x010e, B:54:0x0127, B:58:0x013d, B:60:0x0161, B:63:0x016b, B:65:0x017a, B:94:0x0256, B:96:0x0282, B:97:0x0285, B:99:0x02ad, B:137:0x0370, B:138:0x0373, B:140:0x0380, B:141:0x038d, B:152:0x042b, B:101:0x02c2, B:106:0x02e5, B:108:0x02ed, B:110:0x02f3, B:114:0x0306, B:118:0x0316, B:122:0x0322, B:116:0x030f, B:123:0x032e, B:126:0x033f, B:128:0x0353, B:130:0x0359, B:132:0x0361, B:134:0x0367, B:104:0x02d1, B:66:0x018b, B:68:0x01b6, B:69:0x01c5, B:71:0x01cc, B:73:0x01d2, B:75:0x01dc, B:77:0x01e2, B:79:0x01e8, B:81:0x01ee, B:82:0x01f3, B:88:0x0213, B:90:0x0217, B:91:0x022b, B:92:0x0239, B:93:0x0247, B:142:0x03a4, B:144:0x03da, B:145:0x03dd, B:147:0x03ea, B:148:0x03f5, B:149:0x040b, B:151:0x0411, B:52:0x011a, B:48:0x0106, B:33:0x00b8, B:37:0x00c7, B:39:0x00dc, B:41:0x00e6, B:44:0x00f0), top: B:157:0x0095, inners: #1, #2, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0100 A[Catch: all -> 0x00b3, TryCatch #0 {all -> 0x00b3, blocks: (B:24:0x0095, B:26:0x00a3, B:45:0x00f3, B:47:0x0100, B:49:0x0109, B:51:0x010e, B:54:0x0127, B:58:0x013d, B:60:0x0161, B:63:0x016b, B:65:0x017a, B:94:0x0256, B:96:0x0282, B:97:0x0285, B:99:0x02ad, B:137:0x0370, B:138:0x0373, B:140:0x0380, B:141:0x038d, B:152:0x042b, B:101:0x02c2, B:106:0x02e5, B:108:0x02ed, B:110:0x02f3, B:114:0x0306, B:118:0x0316, B:122:0x0322, B:116:0x030f, B:123:0x032e, B:126:0x033f, B:128:0x0353, B:130:0x0359, B:132:0x0361, B:134:0x0367, B:104:0x02d1, B:66:0x018b, B:68:0x01b6, B:69:0x01c5, B:71:0x01cc, B:73:0x01d2, B:75:0x01dc, B:77:0x01e2, B:79:0x01e8, B:81:0x01ee, B:82:0x01f3, B:88:0x0213, B:90:0x0217, B:91:0x022b, B:92:0x0239, B:93:0x0247, B:142:0x03a4, B:144:0x03da, B:145:0x03dd, B:147:0x03ea, B:148:0x03f5, B:149:0x040b, B:151:0x0411, B:52:0x011a, B:48:0x0106, B:33:0x00b8, B:37:0x00c7, B:39:0x00dc, B:41:0x00e6, B:44:0x00f0), top: B:157:0x0095, inners: #1, #2, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0106 A[Catch: all -> 0x00b3, TryCatch #0 {all -> 0x00b3, blocks: (B:24:0x0095, B:26:0x00a3, B:45:0x00f3, B:47:0x0100, B:49:0x0109, B:51:0x010e, B:54:0x0127, B:58:0x013d, B:60:0x0161, B:63:0x016b, B:65:0x017a, B:94:0x0256, B:96:0x0282, B:97:0x0285, B:99:0x02ad, B:137:0x0370, B:138:0x0373, B:140:0x0380, B:141:0x038d, B:152:0x042b, B:101:0x02c2, B:106:0x02e5, B:108:0x02ed, B:110:0x02f3, B:114:0x0306, B:118:0x0316, B:122:0x0322, B:116:0x030f, B:123:0x032e, B:126:0x033f, B:128:0x0353, B:130:0x0359, B:132:0x0361, B:134:0x0367, B:104:0x02d1, B:66:0x018b, B:68:0x01b6, B:69:0x01c5, B:71:0x01cc, B:73:0x01d2, B:75:0x01dc, B:77:0x01e2, B:79:0x01e8, B:81:0x01ee, B:82:0x01f3, B:88:0x0213, B:90:0x0217, B:91:0x022b, B:92:0x0239, B:93:0x0247, B:142:0x03a4, B:144:0x03da, B:145:0x03dd, B:147:0x03ea, B:148:0x03f5, B:149:0x040b, B:151:0x0411, B:52:0x011a, B:48:0x0106, B:33:0x00b8, B:37:0x00c7, B:39:0x00dc, B:41:0x00e6, B:44:0x00f0), top: B:157:0x0095, inners: #1, #2, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x010e A[Catch: all -> 0x00b3, TryCatch #0 {all -> 0x00b3, blocks: (B:24:0x0095, B:26:0x00a3, B:45:0x00f3, B:47:0x0100, B:49:0x0109, B:51:0x010e, B:54:0x0127, B:58:0x013d, B:60:0x0161, B:63:0x016b, B:65:0x017a, B:94:0x0256, B:96:0x0282, B:97:0x0285, B:99:0x02ad, B:137:0x0370, B:138:0x0373, B:140:0x0380, B:141:0x038d, B:152:0x042b, B:101:0x02c2, B:106:0x02e5, B:108:0x02ed, B:110:0x02f3, B:114:0x0306, B:118:0x0316, B:122:0x0322, B:116:0x030f, B:123:0x032e, B:126:0x033f, B:128:0x0353, B:130:0x0359, B:132:0x0361, B:134:0x0367, B:104:0x02d1, B:66:0x018b, B:68:0x01b6, B:69:0x01c5, B:71:0x01cc, B:73:0x01d2, B:75:0x01dc, B:77:0x01e2, B:79:0x01e8, B:81:0x01ee, B:82:0x01f3, B:88:0x0213, B:90:0x0217, B:91:0x022b, B:92:0x0239, B:93:0x0247, B:142:0x03a4, B:144:0x03da, B:145:0x03dd, B:147:0x03ea, B:148:0x03f5, B:149:0x040b, B:151:0x0411, B:52:0x011a, B:48:0x0106, B:33:0x00b8, B:37:0x00c7, B:39:0x00dc, B:41:0x00e6, B:44:0x00f0), top: B:157:0x0095, inners: #1, #2, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x011a A[Catch: all -> 0x00b3, TryCatch #0 {all -> 0x00b3, blocks: (B:24:0x0095, B:26:0x00a3, B:45:0x00f3, B:47:0x0100, B:49:0x0109, B:51:0x010e, B:54:0x0127, B:58:0x013d, B:60:0x0161, B:63:0x016b, B:65:0x017a, B:94:0x0256, B:96:0x0282, B:97:0x0285, B:99:0x02ad, B:137:0x0370, B:138:0x0373, B:140:0x0380, B:141:0x038d, B:152:0x042b, B:101:0x02c2, B:106:0x02e5, B:108:0x02ed, B:110:0x02f3, B:114:0x0306, B:118:0x0316, B:122:0x0322, B:116:0x030f, B:123:0x032e, B:126:0x033f, B:128:0x0353, B:130:0x0359, B:132:0x0361, B:134:0x0367, B:104:0x02d1, B:66:0x018b, B:68:0x01b6, B:69:0x01c5, B:71:0x01cc, B:73:0x01d2, B:75:0x01dc, B:77:0x01e2, B:79:0x01e8, B:81:0x01ee, B:82:0x01f3, B:88:0x0213, B:90:0x0217, B:91:0x022b, B:92:0x0239, B:93:0x0247, B:142:0x03a4, B:144:0x03da, B:145:0x03dd, B:147:0x03ea, B:148:0x03f5, B:149:0x040b, B:151:0x0411, B:52:0x011a, B:48:0x0106, B:33:0x00b8, B:37:0x00c7, B:39:0x00dc, B:41:0x00e6, B:44:0x00f0), top: B:157:0x0095, inners: #1, #2, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0127 A[Catch: all -> 0x00b3, TRY_LEAVE, TryCatch #0 {all -> 0x00b3, blocks: (B:24:0x0095, B:26:0x00a3, B:45:0x00f3, B:47:0x0100, B:49:0x0109, B:51:0x010e, B:54:0x0127, B:58:0x013d, B:60:0x0161, B:63:0x016b, B:65:0x017a, B:94:0x0256, B:96:0x0282, B:97:0x0285, B:99:0x02ad, B:137:0x0370, B:138:0x0373, B:140:0x0380, B:141:0x038d, B:152:0x042b, B:101:0x02c2, B:106:0x02e5, B:108:0x02ed, B:110:0x02f3, B:114:0x0306, B:118:0x0316, B:122:0x0322, B:116:0x030f, B:123:0x032e, B:126:0x033f, B:128:0x0353, B:130:0x0359, B:132:0x0361, B:134:0x0367, B:104:0x02d1, B:66:0x018b, B:68:0x01b6, B:69:0x01c5, B:71:0x01cc, B:73:0x01d2, B:75:0x01dc, B:77:0x01e2, B:79:0x01e8, B:81:0x01ee, B:82:0x01f3, B:88:0x0213, B:90:0x0217, B:91:0x022b, B:92:0x0239, B:93:0x0247, B:142:0x03a4, B:144:0x03da, B:145:0x03dd, B:147:0x03ea, B:148:0x03f5, B:149:0x040b, B:151:0x0411, B:52:0x011a, B:48:0x0106, B:33:0x00b8, B:37:0x00c7, B:39:0x00dc, B:41:0x00e6, B:44:0x00f0), top: B:157:0x0095, inners: #1, #2, #3 }] */
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzah(com.google.android.gms.measurement.internal.zzr r28) {
        /*
            Method dump skipped, instructions count: 1090
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzpg.zzah(com.google.android.gms.measurement.internal.zzr):void");
    }

    @WorkerThread
    public final void zzai(zzr zzrVar) {
        zzaW().zzg();
        zzu();
        Preconditions.checkNotNull(zzrVar);
        String str = zzrVar.zza;
        Preconditions.checkNotEmpty(str);
        int i = 0;
        if (zzd().zzp(null, zzfy.zzaz)) {
            long currentTimeMillis = zzaZ().currentTimeMillis();
            int zzm = zzd().zzm(null, zzfy.zzai);
            zzd();
            long zzF = currentTimeMillis - zzal.zzF();
            while (i < zzm && zzaG(null, zzF)) {
                i++;
            }
        } else {
            zzd();
            long zzH = zzal.zzH();
            while (i < zzH && zzaG(str, 0L)) {
                i++;
            }
        }
        if (zzd().zzp(null, zzfy.zzaA)) {
            zzaW().zzg();
            zzav();
        }
        if (this.zzl.zzc(str, com.google.android.gms.internal.measurement.zzin.zzb(zzrVar.zzE))) {
            zzaV().zzk().zzb("[sgtm] Going background, trigger client side upload. appId", str);
            zzN(str, zzaZ().currentTimeMillis());
        }
    }

    @WorkerThread
    public final void zzaj(zzah zzahVar) {
        zzr zzaO = zzaO((String) Preconditions.checkNotNull(zzahVar.zza));
        if (zzaO != null) {
            zzak(zzahVar, zzaO);
        }
    }

    @WorkerThread
    public final void zzak(zzah zzahVar, zzr zzrVar) {
        Preconditions.checkNotNull(zzahVar);
        Preconditions.checkNotEmpty(zzahVar.zza);
        Preconditions.checkNotNull(zzahVar.zzb);
        Preconditions.checkNotNull(zzahVar.zzc);
        Preconditions.checkNotEmpty(zzahVar.zzc.zzb);
        zzaW().zzg();
        zzu();
        if (!zzaR(zzrVar)) {
            return;
        }
        if (!zzrVar.zzh) {
            zzao(zzrVar);
            return;
        }
        zzah zzahVar2 = new zzah(zzahVar);
        boolean z = false;
        zzahVar2.zze = false;
        zzj().zzb();
        try {
            zzah zzq = zzj().zzq((String) Preconditions.checkNotNull(zzahVar2.zza), zzahVar2.zzc.zzb);
            if (zzq != null && !zzq.zzb.equals(zzahVar2.zzb)) {
                zzaV().zze().zzd("Updating a conditional user property with different origin. name, origin, origin (from DB)", this.zzn.zzl().zzc(zzahVar2.zzc.zzb), zzahVar2.zzb, zzq.zzb);
            }
            if (zzq != null && zzq.zze) {
                zzahVar2.zzb = zzq.zzb;
                zzahVar2.zzd = zzq.zzd;
                zzahVar2.zzh = zzq.zzh;
                zzahVar2.zzf = zzq.zzf;
                zzahVar2.zzi = zzq.zzi;
                zzahVar2.zze = true;
                zzpl zzplVar = zzahVar2.zzc;
                zzahVar2.zzc = new zzpl(zzplVar.zzb, zzq.zzc.zzc, zzplVar.zza(), zzq.zzc.zzf);
            } else if (TextUtils.isEmpty(zzahVar2.zzf)) {
                zzpl zzplVar2 = zzahVar2.zzc;
                zzahVar2.zzc = new zzpl(zzplVar2.zzb, zzahVar2.zzd, zzplVar2.zza(), zzahVar2.zzc.zzf);
                zzahVar2.zze = true;
                z = true;
            }
            if (zzahVar2.zze) {
                zzpl zzplVar3 = zzahVar2.zzc;
                zzpn zzpnVar = new zzpn((String) Preconditions.checkNotNull(zzahVar2.zza), zzahVar2.zzb, zzplVar3.zzb, zzplVar3.zzc, Preconditions.checkNotNull(zzplVar3.zza()));
                if (zzj().zzl(zzpnVar)) {
                    zzaV().zzj().zzd("User property updated immediately", zzahVar2.zza, this.zzn.zzl().zzc(zzpnVar.zzc), zzpnVar.zze);
                } else {
                    zzaV().zzb().zzd("(2)Too many active user properties, ignoring", zzgu.zzl(zzahVar2.zza), this.zzn.zzl().zzc(zzpnVar.zzc), zzpnVar.zze);
                }
                if (z && zzahVar2.zzi != null) {
                    zzH(new zzbg(zzahVar2.zzi, zzahVar2.zzd), zzrVar);
                }
            }
            if (zzj().zzp(zzahVar2)) {
                zzaV().zzj().zzd("Conditional property added", zzahVar2.zza, this.zzn.zzl().zzc(zzahVar2.zzc.zzb), zzahVar2.zzc.zza());
            } else {
                zzaV().zzb().zzd("Too many conditional properties, ignoring", zzgu.zzl(zzahVar2.zza), this.zzn.zzl().zzc(zzahVar2.zzc.zzb), zzahVar2.zzc.zza());
            }
            zzj().zzc();
            zzj().zzd();
        } catch (Throwable th) {
            zzj().zzd();
            throw th;
        }
    }

    @WorkerThread
    public final void zzal(zzah zzahVar) {
        zzr zzaO = zzaO((String) Preconditions.checkNotNull(zzahVar.zza));
        if (zzaO != null) {
            zzam(zzahVar, zzaO);
        }
    }

    @WorkerThread
    public final void zzam(zzah zzahVar, zzr zzrVar) {
        Bundle bundle;
        Preconditions.checkNotNull(zzahVar);
        Preconditions.checkNotEmpty(zzahVar.zza);
        Preconditions.checkNotNull(zzahVar.zzc);
        Preconditions.checkNotEmpty(zzahVar.zzc.zzb);
        zzaW().zzg();
        zzu();
        if (!zzaR(zzrVar)) {
            return;
        }
        if (!zzrVar.zzh) {
            zzao(zzrVar);
            return;
        }
        zzj().zzb();
        try {
            zzao(zzrVar);
            String str = (String) Preconditions.checkNotNull(zzahVar.zza);
            zzah zzq = zzj().zzq(str, zzahVar.zzc.zzb);
            if (zzq != null) {
                zzaV().zzj().zzc("Removing conditional user property", zzahVar.zza, this.zzn.zzl().zzc(zzahVar.zzc.zzb));
                zzj().zzr(str, zzahVar.zzc.zzb);
                if (zzq.zze) {
                    zzj().zzk(str, zzahVar.zzc.zzb);
                }
                zzbg zzbgVar = zzahVar.zzk;
                if (zzbgVar != null) {
                    zzbe zzbeVar = zzbgVar.zzb;
                    if (zzbeVar != null) {
                        bundle = zzbeVar.zzf();
                    } else {
                        bundle = null;
                    }
                    zzH((zzbg) Preconditions.checkNotNull(zzt().zzac(str, ((zzbg) Preconditions.checkNotNull(zzbgVar)).zza, bundle, zzq.zzb, zzbgVar.zzd, true, true)), zzrVar);
                }
            } else {
                zzaV().zze().zzc("Conditional user property doesn't exist", zzgu.zzl(zzahVar.zza), this.zzn.zzl().zzc(zzahVar.zzc.zzb));
            }
            zzj().zzc();
            zzj().zzd();
        } catch (Throwable th) {
            zzj().zzd();
            throw th;
        }
    }

    @WorkerThread
    public final void zzan(zzr zzrVar, long j) {
        boolean z;
        zzh zzu = zzj().zzu((String) Preconditions.checkNotNull(zzrVar.zza));
        if (zzu != null && zzt().zzB(zzrVar.zzb, zzu.zzf())) {
            zzaV().zze().zzb("New GMP App Id passed in. Removing cached database data. appId", zzgu.zzl(zzu.zzc()));
            zzav zzj = zzj();
            String zzc = zzu.zzc();
            zzj.zzaw();
            zzj.zzg();
            Preconditions.checkNotEmpty(zzc);
            try {
                SQLiteDatabase zze = zzj.zze();
                String[] strArr = {zzc};
                int delete = zze.delete(DbParams.TABLE_EVENTS, "app_id=?", strArr) + zze.delete("user_attributes", "app_id=?", strArr) + zze.delete("conditional_properties", "app_id=?", strArr) + zze.delete("apps", "app_id=?", strArr) + zze.delete("raw_events", "app_id=?", strArr) + zze.delete("raw_events_metadata", "app_id=?", strArr) + zze.delete("event_filters", "app_id=?", strArr) + zze.delete("property_filters", "app_id=?", strArr) + zze.delete("audience_filter_values", "app_id=?", strArr) + zze.delete("consent_settings", "app_id=?", strArr) + zze.delete("default_event_params", "app_id=?", strArr) + zze.delete("trigger_uris", "app_id=?", strArr);
                com.google.android.gms.internal.measurement.zzpo.zza();
                zzic zzicVar = zzj.zzu;
                if (zzicVar.zzc().zzp(null, zzfy.zzbh)) {
                    delete += zze.delete("no_data_mode_events", "app_id=?", strArr);
                }
                if (delete > 0) {
                    zzicVar.zzaV().zzk().zzc("Deleted application data. app, records", zzc, Integer.valueOf(delete));
                }
            } catch (SQLiteException e) {
                zzj.zzu.zzaV().zzb().zzc("Error deleting application data. appId, error", zzgu.zzl(zzc), e);
            }
            zzu = null;
        }
        if (zzu != null) {
            boolean z2 = true;
            if (zzu.zzt() != -2147483648L && zzu.zzt() != zzrVar.zzj) {
                z = true;
            } else {
                z = false;
            }
            String zzr = zzu.zzr();
            if (zzu.zzt() != -2147483648L || zzr == null || zzr.equals(zzrVar.zzc)) {
                z2 = false;
            }
            if (z | z2) {
                Bundle bundle = new Bundle();
                bundle.putString("_pv", zzr);
                zzbg zzbgVar = new zzbg("_au", new zzbe(bundle), "auto", j);
                if (zzd().zzp(null, zzfy.zzbc)) {
                    zzE(zzbgVar, zzrVar);
                } else {
                    zzF(zzbgVar, zzrVar);
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x0136  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0141  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x014c  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0158  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x016d  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0193  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0199  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01c4  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01de  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01e2  */
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.zzh zzao(com.google.android.gms.measurement.internal.zzr r13) {
        /*
            Method dump skipped, instructions count: 491
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzpg.zzao(com.google.android.gms.measurement.internal.zzr):com.google.android.gms.measurement.internal.zzh");
    }

    public final String zzap(zzr zzrVar) {
        try {
            return (String) zzaW().zzh(new zzoz(this, zzrVar)).get(30000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e) {
            zzaV().zzb().zzc("Failed to get app instance id. appId", zzgu.zzl(zzrVar.zza), e);
            return null;
        }
    }

    @WorkerThread
    public final List zzaq(zzr zzrVar, Bundle bundle) {
        zzaW().zzg();
        zzqp.zza();
        zzal zzd = zzd();
        String str = zzrVar.zza;
        if (zzd.zzp(str, zzfy.zzaP) && str != null) {
            if (bundle != null) {
                int[] intArray = bundle.getIntArray("uriSources");
                long[] longArray = bundle.getLongArray("uriTimestamps");
                if (intArray != null) {
                    if (longArray != null && longArray.length == intArray.length) {
                        for (int i = 0; i < intArray.length; i++) {
                            zzav zzj = zzj();
                            int i2 = intArray[i];
                            long j = longArray[i];
                            Preconditions.checkNotEmpty(str);
                            zzj.zzg();
                            zzj.zzaw();
                            try {
                                int delete = zzj.zze().delete("trigger_uris", "app_id=? and source=? and timestamp_millis<=?", new String[]{str, String.valueOf(i2), String.valueOf(j)});
                                zzgs zzk = zzj.zzu.zzaV().zzk();
                                StringBuilder sb = new StringBuilder(String.valueOf(delete).length() + 46);
                                sb.append("Pruned ");
                                sb.append(delete);
                                sb.append(" trigger URIs. appId, source, timestamp");
                                zzk.zzd(sb.toString(), str, Integer.valueOf(i2), Long.valueOf(j));
                            } catch (SQLiteException e) {
                                zzj.zzu.zzaV().zzb().zzc("Error pruning trigger URIs. appId", zzgu.zzl(str), e);
                            }
                        }
                    } else {
                        zzaV().zzb().zza("Uri sources and timestamps do not match");
                    }
                }
            }
            zzav zzj2 = zzj();
            String str2 = zzrVar.zza;
            Preconditions.checkNotEmpty(str2);
            zzj2.zzg();
            zzj2.zzaw();
            List arrayList = new ArrayList();
            Cursor cursor = null;
            try {
                try {
                    cursor = zzj2.zze().query("trigger_uris", new String[]{"trigger_uri", "timestamp_millis", "source"}, "app_id=?", new String[]{str2}, null, null, "rowid", null);
                    if (cursor.moveToFirst()) {
                        do {
                            String string = cursor.getString(0);
                            if (string == null) {
                                string = "";
                            }
                            arrayList.add(new zzoh(string, cursor.getLong(1), cursor.getInt(2)));
                        } while (cursor.moveToNext());
                    }
                } catch (SQLiteException e2) {
                    zzj2.zzu.zzaV().zzb().zzc("Error querying trigger uris. appId", zzgu.zzl(str2), e2);
                    arrayList = Collections.EMPTY_LIST;
                }
                if (cursor != null) {
                    cursor.close();
                }
                return arrayList;
            } catch (Throwable th) {
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        }
        return new ArrayList();
    }

    @WorkerThread
    public final void zzar(String str, zzaf zzafVar) {
        zzaW().zzg();
        zzu();
        zzav zzj = zzj();
        long j = zzafVar.zza;
        zzpj zzB = zzj.zzB(j);
        if (zzB == null) {
            zzaV().zze().zzc("[sgtm] Queued batch doesn't exist. appId, rowId", str, Long.valueOf(j));
            return;
        }
        String zze = zzB.zze();
        if (zzafVar.zzb == zzlr.SUCCESS.zza()) {
            Map map = this.zzF;
            if (map.containsKey(zze)) {
                map.remove(zze);
            }
            zzav zzj2 = zzj();
            Long valueOf = Long.valueOf(j);
            zzj2.zzE(valueOf);
            zzaV().zzk().zzc("[sgtm] queued batch deleted after successful client upload. appId, rowId", str, valueOf);
            long j2 = zzafVar.zzc;
            if (j2 > 0) {
                zzav zzj3 = zzj();
                zzj3.zzg();
                zzj3.zzaw();
                Long valueOf2 = Long.valueOf(j2);
                Preconditions.checkNotNull(valueOf2);
                ContentValues contentValues = new ContentValues();
                contentValues.put("upload_type", Integer.valueOf(zzls.GOOGLE_SIGNAL.zza()));
                zzic zzicVar = zzj3.zzu;
                contentValues.put(AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP, Long.valueOf(zzicVar.zzaZ().currentTimeMillis()));
                try {
                    if (zzj3.zze().update("upload_queue", contentValues, "rowid=? AND app_id=? AND upload_type=?", new String[]{String.valueOf(j2), str, String.valueOf(zzls.GOOGLE_SIGNAL_PENDING.zza())}) != 1) {
                        zzicVar.zzaV().zze().zzc("Google Signal pending batch not updated. appId, rowId", str, valueOf2);
                    }
                    zzaV().zzk().zzc("[sgtm] queued Google Signal batch updated. appId, signalRowId", str, Long.valueOf(zzafVar.zzc));
                    zzP(str);
                    return;
                } catch (SQLiteException e) {
                    zzj3.zzu.zzaV().zzb().zzd("Failed to update google Signal pending batch. appid, rowId", str, Long.valueOf(j2), e);
                    throw e;
                }
            }
            return;
        }
        if (zzafVar.zzb == zzlr.BACKOFF.zza()) {
            Map map2 = this.zzF;
            zzpe zzpeVar = (zzpe) map2.get(zze);
            if (zzpeVar == null) {
                zzpeVar = new zzpe(this);
                map2.put(zze, zzpeVar);
            } else {
                zzpeVar.zza();
            }
            zzaV().zzk().zzd("[sgtm] Putting sGTM server in backoff mode. appId, destination, nextRetryInSeconds", str, zze, Long.valueOf((zzpeVar.zzc() - zzaZ().currentTimeMillis()) / 1000));
        }
        zzav zzj4 = zzj();
        Long valueOf3 = Long.valueOf(zzafVar.zza);
        zzj4.zzK(valueOf3);
        zzaV().zzk().zzc("[sgtm] increased batch retry count after failed client upload. appId, rowId", str, valueOf3);
    }

    public final void zzas(boolean z) {
        zzaL();
    }

    @WorkerThread
    public final void zzat(String str, zzlu zzluVar) {
        zzaW().zzg();
        String str2 = this.zzH;
        if (str2 != null && !str2.equals(str) && zzluVar == null) {
            return;
        }
        this.zzH = str;
        this.zzG = zzluVar;
    }

    public final /* synthetic */ void zzau(zzph zzphVar) {
        zzaW().zzg();
        this.zzm = new zzhk(this);
        zzav zzavVar = new zzav(this);
        zzavVar.zzax();
        this.zze = zzavVar;
        zzd().zza((zzak) Preconditions.checkNotNull(this.zzc));
        zznn zznnVar = new zznn(this);
        zznnVar.zzax();
        this.zzk = zznnVar;
        zzad zzadVar = new zzad(this);
        zzadVar.zzax();
        this.zzh = zzadVar;
        zzlp zzlpVar = new zzlp(this);
        zzlpVar.zzax();
        this.zzj = zzlpVar;
        zzok zzokVar = new zzok(this);
        zzokVar.zzax();
        this.zzg = zzokVar;
        this.zzf = new zzhb(this);
        if (this.zzs != this.zzt) {
            zzaV().zzb().zzc("Not all upload components initialized", Integer.valueOf(this.zzs), Integer.valueOf(this.zzt));
        }
        this.zzo.set(true);
        zzaV().zzk().zza("UploadController is now fully initialized");
    }

    public final /* synthetic */ zzic zzax() {
        return this.zzn;
    }

    public final /* synthetic */ Deque zzay() {
        return this.zzr;
    }

    public final /* synthetic */ void zzaz(long j) {
        this.zzJ = j;
    }

    @WorkerThread
    public final void zzc() {
        zzaW().zzg();
        zzj().zzI();
        zzav zzj = zzj();
        zzj.zzg();
        zzj.zzaw();
        if (zzj.zzag()) {
            zzfx zzfxVar = zzfy.zzav;
            if (((Long) zzfxVar.zzb(null)).longValue() != 0) {
                SQLiteDatabase zze = zzj.zze();
                zzic zzicVar = zzj.zzu;
                int delete = zze.delete("trigger_uris", "abs(timestamp_millis - ?) > cast(? as integer)", new String[]{String.valueOf(zzicVar.zzaZ().currentTimeMillis()), String.valueOf(zzfxVar.zzb(null))});
                if (delete > 0) {
                    zzicVar.zzaV().zzk().zzb("Deleted stale trigger uris. rowsDeleted", Integer.valueOf(delete));
                }
            }
        }
        if (this.zzk.zzd.zza() == 0) {
            this.zzk.zzd.zzb(zzaZ().currentTimeMillis());
        }
        zzaL();
    }

    public final zzal zzd() {
        return ((zzic) Preconditions.checkNotNull(this.zzn)).zzc();
    }

    public final zzou zzf() {
        return this.zzl;
    }

    public final zzht zzh() {
        zzht zzhtVar = this.zzc;
        zzaS(zzhtVar);
        return zzhtVar;
    }

    public final zzgz zzi() {
        zzgz zzgzVar = this.zzd;
        zzaS(zzgzVar);
        return zzgzVar;
    }

    public final zzav zzj() {
        zzav zzavVar = this.zze;
        zzaS(zzavVar);
        return zzavVar;
    }

    public final zzhb zzk() {
        zzhb zzhbVar = this.zzf;
        if (zzhbVar != null) {
            return zzhbVar;
        }
        throw new IllegalStateException("Network broadcast receiver not created");
    }

    public final zzok zzl() {
        zzok zzokVar = this.zzg;
        zzaS(zzokVar);
        return zzokVar;
    }

    public final zzad zzm() {
        zzad zzadVar = this.zzh;
        zzaS(zzadVar);
        return zzadVar;
    }

    public final zzlp zzn() {
        zzlp zzlpVar = this.zzj;
        zzaS(zzlpVar);
        return zzlpVar;
    }

    public final zzpk zzp() {
        zzpk zzpkVar = this.zzi;
        zzaS(zzpkVar);
        return zzpkVar;
    }

    public final zznn zzq() {
        return this.zzk;
    }

    public final zzgn zzs() {
        return this.zzn.zzl();
    }

    public final zzpp zzt() {
        return ((zzic) Preconditions.checkNotNull(this.zzn)).zzk();
    }

    public final void zzu() {
        if (this.zzo.get()) {
            return;
        }
        throw new IllegalStateException("UploadController is not initialized");
    }

    @WorkerThread
    public final void zzv(zzr zzrVar) {
        zzaW().zzg();
        zzu();
        String str = zzrVar.zza;
        Preconditions.checkNotEmpty(str);
        zzjl zzf = zzjl.zzf(zzrVar.zzs, zzrVar.zzx);
        zzB(str);
        zzaV().zzk().zzc("Setting storage consent for package", str, zzf);
        zzA(str, zzf);
    }

    @WorkerThread
    public final void zzw(zzr zzrVar) {
        boolean z;
        zzaW().zzg();
        zzu();
        String str = zzrVar.zza;
        Preconditions.checkNotEmpty(str);
        zzaz zzg = zzaz.zzg(zzrVar.zzy);
        zzaV().zzk().zzc("Setting DMA consent for package", str, zzg);
        zzaW().zzg();
        zzu();
        zzji zzc = zzaz.zzh(zzy(str), 100).zzc();
        this.zzD.put(str, zzg);
        zzj().zzab(str, zzg);
        zzji zzc2 = zzaz.zzh(zzy(str), 100).zzc();
        zzaW().zzg();
        zzu();
        zzji zzjiVar = zzji.DENIED;
        boolean z2 = true;
        if (zzc == zzjiVar && zzc2 == zzji.GRANTED) {
            z = true;
        } else {
            z = false;
        }
        if (zzc != zzji.GRANTED || zzc2 != zzjiVar) {
            z2 = false;
        }
        if (!z && !z2) {
            return;
        }
        zzaV().zzk().zzb("Generated _dcu event for", str);
        Bundle bundle = new Bundle();
        if (zzj().zzw(zzC(), str, false, false, false, false, false, false, false).zzf < zzd().zzm(str, zzfy.zzam)) {
            bundle.putLong("_r", 1L);
            zzaV().zzk().zzc("_dcu realtime event count", str, Long.valueOf(zzj().zzw(zzC(), str, false, false, false, false, false, true, false).zzf));
        }
        this.zzK.zza(str, "_dcu", bundle);
    }

    @WorkerThread
    public final zzaz zzx(String str) {
        zzaW().zzg();
        zzu();
        Map map = this.zzD;
        zzaz zzazVar = (zzaz) map.get(str);
        if (zzazVar == null) {
            zzaz zzaa = zzj().zzaa(str);
            map.put(str, zzaa);
            return zzaa;
        }
        return zzazVar;
    }

    @WorkerThread
    public final Bundle zzy(String str) {
        boolean z;
        String str2;
        zzaW().zzg();
        zzu();
        if (zzh().zzx(str) == null) {
            return null;
        }
        Bundle bundle = new Bundle();
        zzjl zzB = zzB(str);
        bundle.putAll(zzB.zzn());
        bundle.putAll(zzz(str, zzx(str), zzB, new zzan()).zzf());
        zzpn zzm = zzj().zzm(str, "_npa");
        if (zzm != null) {
            z = zzm.zze.equals(1L);
        } else {
            z = zzaC(str, new zzan());
        }
        if (1 != z) {
            str2 = "granted";
        } else {
            str2 = "denied";
        }
        bundle.putString("ad_personalization", str2);
        return bundle;
    }

    @VisibleForTesting
    @WorkerThread
    public final zzaz zzz(String str, zzaz zzazVar, zzjl zzjlVar, zzan zzanVar) {
        zzji zzjiVar;
        boolean z;
        int i = 90;
        if (zzh().zzx(str) == null) {
            if (zzazVar.zzc() == zzji.DENIED) {
                i = zzazVar.zzb();
                zzanVar.zzb(zzjk.AD_USER_DATA, i);
            } else {
                zzanVar.zzc(zzjk.AD_USER_DATA, zzam.FAILSAFE);
            }
            return new zzaz(Boolean.FALSE, i, Boolean.TRUE, "-");
        }
        zzji zzc = zzazVar.zzc();
        zzji zzjiVar2 = zzji.GRANTED;
        if (zzc != zzjiVar2 && zzc != (zzjiVar = zzji.DENIED)) {
            if (zzc == zzji.POLICY) {
                zzht zzhtVar = this.zzc;
                zzjk zzjkVar = zzjk.AD_USER_DATA;
                zzji zzA = zzhtVar.zzA(str, zzjkVar);
                if (zzA != zzji.UNINITIALIZED) {
                    zzanVar.zzc(zzjkVar, zzam.REMOTE_ENFORCED_DEFAULT);
                    zzc = zzA;
                }
            }
            zzht zzhtVar2 = this.zzc;
            zzjk zzjkVar2 = zzjk.AD_USER_DATA;
            zzjk zzw = zzhtVar2.zzw(str, zzjkVar2);
            zzji zzp = zzjlVar.zzp();
            if (zzp == zzjiVar2 || zzp == zzjiVar) {
                z = true;
            } else {
                z = false;
            }
            if (zzw == zzjk.AD_STORAGE && z) {
                zzanVar.zzc(zzjkVar2, zzam.REMOTE_DELEGATION);
                zzc = zzp;
            } else {
                zzanVar.zzc(zzjkVar2, zzam.REMOTE_DEFAULT);
                if (true != zzhtVar2.zzv(str, zzjkVar2)) {
                    zzc = zzjiVar;
                } else {
                    zzc = zzjiVar2;
                }
            }
        } else {
            i = zzazVar.zzb();
            zzanVar.zzb(zzjk.AD_USER_DATA, i);
        }
        boolean zzy = this.zzc.zzy(str);
        SortedSet zzz = zzh().zzz(str);
        if (zzc != zzji.DENIED && !zzz.isEmpty()) {
            Boolean bool = Boolean.TRUE;
            Boolean valueOf = Boolean.valueOf(zzy);
            String str2 = "";
            if (zzy) {
                str2 = TextUtils.join("", zzz);
            }
            return new zzaz(bool, i, valueOf, str2);
        }
        return new zzaz(Boolean.FALSE, i, Boolean.valueOf(zzy), "-");
    }
}
