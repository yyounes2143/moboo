package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.PendingIntent;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.RemoteException;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.browser.customtabs.CustomTabsCallback;
import androidx.core.app.NotificationManagerCompat;
import androidx.media3.common.C;
import com.google.android.gms.ads.AdService;
import com.google.android.gms.ads.NotificationHandlerActivity;
import com.google.android.gms.ads.impl.R;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.HashMap;
import java.util.Map;
import java.util.Timer;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzece extends zzbtd {
    @VisibleForTesting
    final Map zza = new HashMap();
    private final Context zzb;
    private final zzdsd zzc;
    private final com.google.android.gms.ads.internal.util.client.zzu zzd;
    private final zzebt zze;
    private String zzf;
    private String zzg;

    @VisibleForTesting
    public zzece(Context context, zzebt zzebtVar, com.google.android.gms.ads.internal.util.client.zzu zzuVar, zzdsd zzdsdVar) {
        this.zzb = context;
        this.zzc = zzdsdVar;
        this.zzd = zzuVar;
        this.zze = zzebtVar;
    }

    public static /* synthetic */ void zzc(zzece zzeceVar, com.google.android.gms.ads.internal.overlay.zzm zzmVar, DialogInterface dialogInterface, int i) {
        zzeceVar.zze.zzc(zzeceVar.zzf);
        HashMap hashMap = new HashMap();
        hashMap.put("dialog_action", "dismiss");
        zzeceVar.zzw(zzeceVar.zzf, "rtsdc", hashMap);
        if (zzmVar != null) {
            zzmVar.zzb();
        }
    }

    public static /* synthetic */ void zzd(zzece zzeceVar, com.google.android.gms.ads.internal.overlay.zzm zzmVar, DialogInterface dialogInterface) {
        zzeceVar.zze.zzc(zzeceVar.zzf);
        HashMap hashMap = new HashMap();
        hashMap.put("dialog_action", "dismiss");
        zzeceVar.zzw(zzeceVar.zzf, "rtsdc", hashMap);
        if (zzmVar != null) {
            zzmVar.zzb();
        }
    }

    public static /* synthetic */ void zzk(zzece zzeceVar, Activity activity, com.google.android.gms.ads.internal.overlay.zzm zzmVar, DialogInterface dialogInterface, int i) {
        HashMap hashMap = new HashMap();
        hashMap.put("dialog_action", "confirm");
        zzeceVar.zzw(zzeceVar.zzf, "rtsdc", hashMap);
        activity.startActivity(com.google.android.gms.ads.internal.zzv.zzs().zzf(activity));
        zzeceVar.zzx();
        if (zzmVar != null) {
            zzmVar.zzb();
        }
    }

    public static /* synthetic */ void zzl(zzece zzeceVar, com.google.android.gms.ads.internal.overlay.zzm zzmVar, DialogInterface dialogInterface, int i) {
        zzeceVar.zze.zzc(zzeceVar.zzf);
        HashMap hashMap = new HashMap();
        hashMap.put("dialog_action", "dismiss");
        zzeceVar.zzw(zzeceVar.zzf, "dialog_click", hashMap);
        if (zzmVar != null) {
            zzmVar.zzb();
        }
    }

    public static /* synthetic */ void zzm(zzece zzeceVar, Activity activity, com.google.android.gms.ads.internal.overlay.zzm zzmVar, DialogInterface dialogInterface, int i) {
        HashMap hashMap = new HashMap();
        hashMap.put("dialog_action", "confirm");
        zzeceVar.zzw(zzeceVar.zzf, "dialog_click", hashMap);
        zzeceVar.zzy(activity, zzmVar);
    }

    public static /* synthetic */ void zzn(zzece zzeceVar, com.google.android.gms.ads.internal.overlay.zzm zzmVar, DialogInterface dialogInterface) {
        zzeceVar.zze.zzc(zzeceVar.zzf);
        HashMap hashMap = new HashMap();
        hashMap.put("dialog_action", "dismiss");
        zzeceVar.zzw(zzeceVar.zzf, "dialog_click", hashMap);
        if (zzmVar != null) {
            zzmVar.zzb();
        }
    }

    public static void zzo(Context context, zzdsd zzdsdVar, zzebt zzebtVar, String str, String str2) {
        zzp(context, zzdsdVar, zzebtVar, str, str2, new HashMap());
    }

    public static void zzp(Context context, zzdsd zzdsdVar, zzebt zzebtVar, String str, String str2, Map map) {
        String str3;
        String str4;
        if (true != com.google.android.gms.ads.internal.zzv.zzp().zzA(context)) {
            str3 = "offline";
        } else {
            str3 = CustomTabsCallback.ONLINE_EXTRAS_KEY;
        }
        if (zzdsdVar != null) {
            zzdsc zza = zzdsdVar.zza();
            zza.zzb("gqi", str);
            zza.zzb("action", str2);
            zza.zzb("device_connectivity", str3);
            zza.zzb("event_timestamp", String.valueOf(com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis()));
            for (Map.Entry entry : map.entrySet()) {
                zza.zzb((String) entry.getKey(), (String) entry.getValue());
            }
            str4 = zza.zze();
        } else {
            str4 = "";
        }
        zzebtVar.zzd(new zzebv(com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis(), str, str4, 2));
    }

    @VisibleForTesting
    public static final PendingIntent zzr(Context context, String str, String str2, String str3) {
        Intent intent = new Intent();
        intent.setAction(str);
        intent.putExtra("offline_notification_action", str);
        intent.putExtra("gws_query_id", str2);
        intent.putExtra("uri", str3);
        if (Build.VERSION.SDK_INT >= 29 && str.equals("offline_notification_clicked")) {
            intent.setClassName(context, NotificationHandlerActivity.CLASS_NAME);
            return zzfrz.zza(context, 0, intent, 201326592);
        }
        intent.setClassName(context, AdService.CLASS_NAME);
        return zzfrz.zzb(context, 0, intent, 1140850688, 0);
    }

    private final AlertDialog zzs(Activity activity, @Nullable final com.google.android.gms.ads.internal.overlay.zzm zzmVar) {
        com.google.android.gms.ads.internal.zzv.zzr();
        AlertDialog.Builder onCancelListener = com.google.android.gms.ads.internal.util.zzs.zzL(activity).setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.google.android.gms.internal.ads.zzebw
            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                com.google.android.gms.ads.internal.overlay.zzm zzmVar2 = com.google.android.gms.ads.internal.overlay.zzm.this;
                if (zzmVar2 != null) {
                    zzmVar2.zzb();
                }
            }
        });
        XmlResourceParser zzt = zzt(R.layout.offline_ads_dialog);
        if (zzt == null) {
            onCancelListener.setMessage(zzv(R.string.offline_dialog_text, "Thanks for your interest.\nWe will share more once you're back online."));
            return onCancelListener.create();
        }
        try {
            Drawable drawable = null;
            View inflate = activity.getLayoutInflater().inflate(zzt, (ViewGroup) null);
            onCancelListener.setView(inflate);
            String zzu = zzu();
            if (!TextUtils.isEmpty(zzu)) {
                TextView textView = (TextView) inflate.findViewById(R.id.offline_dialog_advertiser_name);
                textView.setVisibility(0);
                textView.setText(zzu);
            }
            zzebl zzeblVar = (zzebl) this.zza.get(this.zzf);
            if (zzeblVar != null) {
                drawable = zzeblVar.zza();
            }
            if (drawable != null) {
                ((ImageView) inflate.findViewById(R.id.offline_dialog_image)).setImageDrawable(drawable);
            }
            AlertDialog create = onCancelListener.create();
            create.getWindow().setBackgroundDrawable(new ColorDrawable(0));
            return create;
        } catch (Resources.NotFoundException unused) {
            onCancelListener.setMessage(zzv(R.string.offline_dialog_text, "Thanks for your interest.\nWe will share more once you're back online."));
            return onCancelListener.create();
        }
    }

    @Nullable
    private static XmlResourceParser zzt(int i) {
        Resources zze = com.google.android.gms.ads.internal.zzv.zzp().zze();
        if (zze == null) {
            return null;
        }
        try {
            return zze.getLayout(i);
        } catch (Resources.NotFoundException unused) {
            return null;
        }
    }

    @Nullable
    private final String zzu() {
        zzebl zzeblVar = (zzebl) this.zza.get(this.zzf);
        if (zzeblVar == null) {
            return "";
        }
        return zzeblVar.zzb();
    }

    private static String zzv(int i, String str) {
        Resources zze = com.google.android.gms.ads.internal.zzv.zzp().zze();
        if (zze != null) {
            try {
                return zze.getString(i);
            } catch (Resources.NotFoundException unused) {
                return str;
            }
        }
        return str;
    }

    private final void zzw(String str, String str2, Map map) {
        zzp(this.zzb, this.zzc, this.zze, str, str2, map);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:24:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzx() {
        /*
            r7 = this;
            com.google.android.gms.ads.internal.zzv.zzr()     // Catch: android.os.RemoteException -> L20
            android.content.Context r0 = r7.zzb     // Catch: android.os.RemoteException -> L20
            com.google.android.gms.ads.internal.util.zzbr r1 = com.google.android.gms.ads.internal.util.zzs.zzA(r0)     // Catch: android.os.RemoteException -> L20
            com.google.android.gms.dynamic.IObjectWrapper r2 = com.google.android.gms.dynamic.ObjectWrapper.wrap(r0)     // Catch: android.os.RemoteException -> L20
            com.google.android.gms.ads.internal.offline.buffering.zza r3 = new com.google.android.gms.ads.internal.offline.buffering.zza     // Catch: android.os.RemoteException -> L20
            java.lang.String r4 = r7.zzg     // Catch: android.os.RemoteException -> L20
            java.lang.String r5 = r7.zzf     // Catch: android.os.RemoteException -> L20
            java.util.Map r6 = r7.zza     // Catch: android.os.RemoteException -> L20
            java.lang.Object r6 = r6.get(r5)     // Catch: android.os.RemoteException -> L20
            com.google.android.gms.internal.ads.zzebl r6 = (com.google.android.gms.internal.ads.zzebl) r6     // Catch: android.os.RemoteException -> L20
            if (r6 != 0) goto L22
            java.lang.String r6 = ""
            goto L26
        L20:
            r0 = move-exception
            goto L40
        L22:
            java.lang.String r6 = r6.zzc()     // Catch: android.os.RemoteException -> L20
        L26:
            r3.<init>(r4, r5, r6)     // Catch: android.os.RemoteException -> L20
            boolean r2 = r1.zzg(r2, r3)     // Catch: android.os.RemoteException -> L20
            if (r2 != 0) goto L3e
            com.google.android.gms.dynamic.IObjectWrapper r0 = com.google.android.gms.dynamic.ObjectWrapper.wrap(r0)     // Catch: android.os.RemoteException -> L3c
            java.lang.String r3 = r7.zzg     // Catch: android.os.RemoteException -> L3c
            java.lang.String r4 = r7.zzf     // Catch: android.os.RemoteException -> L3c
            boolean r0 = r1.zzf(r0, r3, r4)     // Catch: android.os.RemoteException -> L3c
            goto L49
        L3c:
            r0 = move-exception
            goto L41
        L3e:
            r0 = 1
            goto L49
        L40:
            r2 = 0
        L41:
            int r1 = com.google.android.gms.ads.internal.util.zze.zza
            java.lang.String r1 = "Failed to schedule offline notification poster."
            com.google.android.gms.ads.internal.util.client.zzo.zzh(r1, r0)
            r0 = r2
        L49:
            if (r0 != 0) goto L5d
            com.google.android.gms.internal.ads.zzebt r0 = r7.zze
            java.lang.String r1 = r7.zzf
            r0.zzc(r1)
            java.lang.String r0 = r7.zzf
            java.lang.String r1 = "offline_notification_worker_not_scheduled"
            com.google.android.gms.internal.ads.zzfyf r2 = com.google.android.gms.internal.ads.zzfyf.zzd()
            r7.zzw(r0, r1, r2)
        L5d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzece.zzx():void");
    }

    private final void zzy(final Activity activity, @Nullable final com.google.android.gms.ads.internal.overlay.zzm zzmVar) {
        com.google.android.gms.ads.internal.zzv.zzr();
        if (!NotificationManagerCompat.from(activity).areNotificationsEnabled()) {
            if (Build.VERSION.SDK_INT < 33) {
                com.google.android.gms.ads.internal.zzv.zzr();
                AlertDialog.Builder zzL = com.google.android.gms.ads.internal.util.zzs.zzL(activity);
                zzL.setTitle(zzv(R.string.notifications_permission_title, "Allow app to send you notifications?")).setPositiveButton(zzv(R.string.notifications_permission_confirm, "Allow"), new DialogInterface.OnClickListener() { // from class: com.google.android.gms.internal.ads.zzebx
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        zzece.zzk(zzece.this, activity, zzmVar, dialogInterface, i);
                    }
                }).setNegativeButton(zzv(R.string.notifications_permission_decline, "Don't allow"), new DialogInterface.OnClickListener() { // from class: com.google.android.gms.internal.ads.zzeby
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        zzece.zzc(zzece.this, zzmVar, dialogInterface, i);
                    }
                }).setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.google.android.gms.internal.ads.zzebz
                    @Override // android.content.DialogInterface.OnCancelListener
                    public final void onCancel(DialogInterface dialogInterface) {
                        zzece.zzd(zzece.this, zzmVar, dialogInterface);
                    }
                });
                zzL.create().show();
                zzw(this.zzf, "rtsdi", zzfyf.zzd());
                return;
            }
            activity.requestPermissions(new String[]{"android.permission.POST_NOTIFICATIONS"}, 12345);
            zzw(this.zzf, "asnpdi", zzfyf.zzd());
            return;
        }
        zzx();
        zzz(activity, zzmVar);
    }

    private final void zzz(Activity activity, @Nullable com.google.android.gms.ads.internal.overlay.zzm zzmVar) {
        AlertDialog zzs = zzs(activity, zzmVar);
        zzs.show();
        Timer timer = new Timer();
        timer.schedule(new zzecd(this, zzs, timer, zzmVar), C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS);
    }

    @Override // com.google.android.gms.internal.ads.zzbte
    public final void zze(Intent intent) {
        String stringExtra = intent.getStringExtra("offline_notification_action");
        if (stringExtra != null) {
            if (stringExtra.equals("offline_notification_clicked") || stringExtra.equals("offline_notification_dismissed")) {
                String stringExtra2 = intent.getStringExtra("gws_query_id");
                String stringExtra3 = intent.getStringExtra("uri");
                Context context = this.zzb;
                boolean zzA = com.google.android.gms.ads.internal.zzv.zzp().zzA(context);
                HashMap hashMap = new HashMap();
                char c = 2;
                if (stringExtra.equals("offline_notification_clicked")) {
                    hashMap.put("offline_notification_action", "offline_notification_clicked");
                    if (true == zzA) {
                        c = 1;
                    }
                    hashMap.put("obvs", String.valueOf(Build.VERSION.SDK_INT));
                    hashMap.put("olaih", String.valueOf(stringExtra3.startsWith("http")));
                    try {
                        Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(stringExtra3);
                        if (launchIntentForPackage == null) {
                            launchIntentForPackage = new Intent("android.intent.action.VIEW");
                            launchIntentForPackage.setData(Uri.parse(stringExtra3));
                        }
                        launchIntentForPackage.addFlags(268435456);
                        context.startActivity(launchIntentForPackage);
                        hashMap.put("olaa", "olas");
                    } catch (ActivityNotFoundException unused) {
                        hashMap.put("olaa", "olaf");
                    }
                } else {
                    hashMap.put("offline_notification_action", "offline_notification_dismissed");
                }
                zzw(stringExtra2, "offline_notification_action", hashMap);
                try {
                    SQLiteDatabase writableDatabase = this.zze.getWritableDatabase();
                    if (c == 1) {
                        this.zze.zzg(writableDatabase, this.zzd, stringExtra2);
                    } else {
                        zzebt.zzi(writableDatabase, stringExtra2);
                    }
                } catch (SQLiteException e) {
                    String concat = "Failed to get writable offline buffering database: ".concat(e.toString());
                    int i = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzg(concat);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbte
    public final void zzf(String[] strArr, int[] iArr, IObjectWrapper iObjectWrapper) {
        for (int i = 0; i < strArr.length; i++) {
            if (strArr[i].equals("android.permission.POST_NOTIFICATIONS")) {
                zzecg zzecgVar = (zzecg) ObjectWrapper.unwrap(iObjectWrapper);
                Activity zza = zzecgVar.zza();
                com.google.android.gms.ads.internal.overlay.zzm zzb = zzecgVar.zzb();
                HashMap hashMap = new HashMap();
                if (iArr[i] == 0) {
                    hashMap.put("dialog_action", "confirm");
                    zzx();
                    zzz(zza, zzb);
                } else {
                    hashMap.put("dialog_action", "dismiss");
                    if (zzb != null) {
                        zzb.zzb();
                    }
                }
                zzw(this.zzf, "asnpdc", hashMap);
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbte
    public final void zzg(IObjectWrapper iObjectWrapper) {
        zzecg zzecgVar = (zzecg) ObjectWrapper.unwrap(iObjectWrapper);
        final Activity zza = zzecgVar.zza();
        final com.google.android.gms.ads.internal.overlay.zzm zzb = zzecgVar.zzb();
        this.zzf = zzecgVar.zzc();
        this.zzg = zzecgVar.zzd();
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zziK)).booleanValue()) {
            zzw(this.zzf, "dialog_impression", zzfyf.zzd());
            com.google.android.gms.ads.internal.zzv.zzr();
            AlertDialog.Builder zzL = com.google.android.gms.ads.internal.util.zzs.zzL(zza);
            zzL.setTitle(zzv(R.string.offline_opt_in_title, "Open ad when you're back online.")).setMessage(zzv(R.string.offline_opt_in_message, "We'll send you a notification with a link to the advertiser site.")).setPositiveButton(zzv(R.string.offline_opt_in_confirm, "OK"), new DialogInterface.OnClickListener() { // from class: com.google.android.gms.internal.ads.zzeca
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    zzece.zzm(zzece.this, zza, zzb, dialogInterface, i);
                }
            }).setNegativeButton(zzv(R.string.offline_opt_in_decline, "No thanks"), new DialogInterface.OnClickListener() { // from class: com.google.android.gms.internal.ads.zzecb
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    zzece.zzl(zzece.this, zzb, dialogInterface, i);
                }
            }).setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.google.android.gms.internal.ads.zzecc
                @Override // android.content.DialogInterface.OnCancelListener
                public final void onCancel(DialogInterface dialogInterface) {
                    zzece.zzn(zzece.this, zzb, dialogInterface);
                }
            });
            zzL.create().show();
            return;
        }
        zzy(zza, zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzbte
    public final void zzh() {
        final com.google.android.gms.ads.internal.util.client.zzu zzuVar = this.zzd;
        this.zze.zze(new zzffx() { // from class: com.google.android.gms.internal.ads.zzebm
            @Override // com.google.android.gms.internal.ads.zzffx
            public final Object zza(Object obj) {
                zzebt.zzb(com.google.android.gms.ads.internal.util.client.zzu.this, (SQLiteDatabase) obj);
                return null;
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbte
    public final void zzi(IObjectWrapper iObjectWrapper, String str, String str2) {
        zzj(iObjectWrapper, new com.google.android.gms.ads.internal.offline.buffering.zza(str, str2, ""));
    }

    /* JADX WARN: Can't wrap try/catch for region: R(12:1|(1:3)(1:28)|4|(9:8|9|(2:21|22)|11|12|13|14|15|16)|27|(0)|11|12|13|14|15|16) */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x00d8, code lost:
        r10 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x00d9, code lost:
        r11.put("notification_not_shown_reason", r10.getMessage());
        r10 = "offline_notification_failed";
     */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00aa A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.zzbte
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzj(com.google.android.gms.dynamic.IObjectWrapper r10, com.google.android.gms.ads.internal.offline.buffering.zza r11) {
        /*
            r9 = this;
            r0 = 1
            java.lang.Object r10 = com.google.android.gms.dynamic.ObjectWrapper.unwrap(r10)
            android.content.Context r10 = (android.content.Context) r10
            java.lang.String r1 = r11.zza
            java.lang.String r2 = r11.zzb
            java.lang.String r11 = r11.zzc
            java.lang.String r3 = r9.zzu()
            com.google.android.gms.ads.internal.util.zzaa r4 = com.google.android.gms.ads.internal.zzv.zzs()
            java.lang.String r5 = "offline_notification_channel"
            java.lang.String r6 = "AdMob Offline Notifications"
            r4.zzh(r10, r5, r6)
            java.lang.String r4 = "offline_notification_clicked"
            android.app.PendingIntent r4 = zzr(r10, r4, r2, r1)
            java.lang.String r6 = "offline_notification_dismissed"
            android.app.PendingIntent r1 = zzr(r10, r6, r2, r1)
            androidx.core.app.NotificationCompat$Builder r6 = new androidx.core.app.NotificationCompat$Builder
            r6.<init>(r10, r5)
            boolean r5 = android.text.TextUtils.isEmpty(r3)
            if (r5 != 0) goto L48
            int r5 = com.google.android.gms.ads.impl.R.string.offline_notification_title_with_advertiser
            java.lang.String r7 = "You are back online! Continue learning about %s"
            java.lang.String r5 = zzv(r5, r7)
            java.lang.Object[] r7 = new java.lang.Object[r0]
            r8 = 0
            r7[r8] = r3
            java.lang.String r3 = java.lang.String.format(r5, r7)
            r6.setContentTitle(r3)
            goto L53
        L48:
            int r3 = com.google.android.gms.ads.impl.R.string.offline_notification_title
            java.lang.String r5 = "You are back online! Let's pick up where we left off"
            java.lang.String r3 = zzv(r3, r5)
            r6.setContentTitle(r3)
        L53:
            androidx.core.app.NotificationCompat$Builder r0 = r6.setAutoCancel(r0)
            androidx.core.app.NotificationCompat$Builder r0 = r0.setDeleteIntent(r1)
            androidx.core.app.NotificationCompat$Builder r0 = r0.setContentIntent(r4)
            android.content.pm.ApplicationInfo r1 = r10.getApplicationInfo()
            int r1 = r1.icon
            androidx.core.app.NotificationCompat$Builder r0 = r0.setSmallIcon(r1)
            com.google.android.gms.internal.ads.zzbcm r1 = com.google.android.gms.internal.ads.zzbcv.zziL
            com.google.android.gms.internal.ads.zzbct r3 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r1 = r3.zzb(r1)
            java.lang.Integer r1 = (java.lang.Integer) r1
            int r1 = r1.intValue()
            r0.setPriority(r1)
            com.google.android.gms.internal.ads.zzbcm r0 = com.google.android.gms.internal.ads.zzbcv.zziN
            com.google.android.gms.internal.ads.zzbct r1 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r0 = r1.zzb(r0)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            r1 = 0
            if (r0 == 0) goto La7
            boolean r0 = r11.isEmpty()
            if (r0 != 0) goto La7
            java.net.URL r0 = new java.net.URL     // Catch: java.io.IOException -> La7
            r0.<init>(r11)     // Catch: java.io.IOException -> La7
            java.net.URLConnection r11 = r0.openConnection()     // Catch: java.io.IOException -> La7
            java.io.InputStream r11 = r11.getInputStream()     // Catch: java.io.IOException -> La7
            android.graphics.Bitmap r11 = android.graphics.BitmapFactory.decodeStream(r11)     // Catch: java.io.IOException -> La7
            goto La8
        La7:
            r11 = r1
        La8:
            if (r11 == 0) goto Lbe
            androidx.core.app.NotificationCompat$Builder r0 = r6.setLargeIcon(r11)     // Catch: android.content.res.Resources.NotFoundException -> Lbe
            androidx.core.app.NotificationCompat$BigPictureStyle r3 = new androidx.core.app.NotificationCompat$BigPictureStyle     // Catch: android.content.res.Resources.NotFoundException -> Lbe
            r3.<init>()     // Catch: android.content.res.Resources.NotFoundException -> Lbe
            androidx.core.app.NotificationCompat$BigPictureStyle r11 = r3.bigPicture(r11)     // Catch: android.content.res.Resources.NotFoundException -> Lbe
            androidx.core.app.NotificationCompat$BigPictureStyle r11 = r11.bigLargeIcon(r1)     // Catch: android.content.res.Resources.NotFoundException -> Lbe
            r0.setStyle(r11)     // Catch: android.content.res.Resources.NotFoundException -> Lbe
        Lbe:
            java.lang.String r11 = "notification"
            java.lang.Object r10 = r10.getSystemService(r11)
            android.app.NotificationManager r10 = (android.app.NotificationManager) r10
            java.util.HashMap r11 = new java.util.HashMap
            r11.<init>()
            android.app.Notification r0 = r6.build()     // Catch: java.lang.IllegalArgumentException -> Ld8
            r1 = 54321(0xd431, float:7.612E-41)
            r10.notify(r2, r1, r0)     // Catch: java.lang.IllegalArgumentException -> Ld8
            java.lang.String r10 = "offline_notification_impression"
            goto Le4
        Ld8:
            r10 = move-exception
            java.lang.String r0 = "notification_not_shown_reason"
            java.lang.String r10 = r10.getMessage()
            r11.put(r0, r10)
            java.lang.String r10 = "offline_notification_failed"
        Le4:
            r9.zzw(r2, r10, r11)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzece.zzj(com.google.android.gms.dynamic.IObjectWrapper, com.google.android.gms.ads.internal.offline.buffering.zza):void");
    }

    public final void zzq(String str, zzdio zzdioVar) {
        String zzx = zzdioVar.zzx();
        String zzB = zzdioVar.zzB();
        String str2 = "";
        if (TextUtils.isEmpty(zzx)) {
            if (zzB == null) {
                zzx = "";
            } else {
                zzx = zzB;
            }
        }
        zzbgg zzm = zzdioVar.zzm();
        if (zzm != null) {
            try {
                str2 = zzm.zze().toString();
            } catch (RemoteException unused) {
            }
        }
        zzbgg zzn = zzdioVar.zzn();
        Drawable drawable = null;
        if (zzn != null) {
            try {
                IObjectWrapper zzf = zzn.zzf();
                if (zzf != null) {
                    drawable = (Drawable) ObjectWrapper.unwrap(zzf);
                }
            } catch (RemoteException unused2) {
            }
        }
        this.zza.put(str, new zzebh(zzx, str2, drawable));
    }
}
