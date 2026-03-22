package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.RemoteException;
import androidx.annotation.VisibleForTesting;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import j$.util.Collection;
import j$.util.function.Consumer$CC;
import j$.util.function.Predicate$CC;
import java.util.Arrays;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.Predicate;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
@SuppressLint({"RestrictedApi"})
/* loaded from: classes4.dex */
public final class zzftl {
    public static final /* synthetic */ int zzb = 0;
    private static final zzfud zzc = new zzfud("OverlayDisplayService");
    private static final Intent zzd = new Intent("com.google.android.play.core.lmd.BIND_OVERLAY_DISPLAY_SERVICE").setPackage("com.android.vending");
    @VisibleForTesting
    final zzfuc zza;
    private final String zze;

    /* JADX WARN: Type inference failed for: r6v0, types: [com.google.android.gms.internal.ads.zzfth] */
    public zzftl(Context context) {
        if (zzfuf.zza(context)) {
            this.zza = new zzfuc(context.getApplicationContext(), zzc, "OverlayDisplayService", zzd, new Object() { // from class: com.google.android.gms.internal.ads.zzfth
            });
        } else {
            this.zza = null;
        }
        this.zze = context.getPackageName();
    }

    public static /* synthetic */ void zza(zzftl zzftlVar, zzfts zzftsVar, int i, zzftq zzftqVar) {
        try {
            zzfuc zzfucVar = zzftlVar.zza;
            if (zzfucVar != null) {
                zzfsc zzfscVar = (zzfsc) zzfucVar.zzc();
                if (zzfscVar == null) {
                    return;
                }
                String str = zzftlVar.zze;
                final Bundle bundle = new Bundle();
                bundle.putString("callerPackage", str);
                bundle.putInt("displayMode", i);
                zzi(zzftsVar.zzb(), new Consumer() { // from class: com.google.android.gms.internal.ads.zzfsw
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        int i2 = zzftl.zzb;
                        bundle.putString("sessionToken", (String) obj);
                    }

                    public /* synthetic */ Consumer andThen(Consumer consumer) {
                        return Consumer$CC.$default$andThen(this, consumer);
                    }
                });
                zzi(zzftsVar.zza(), new Consumer() { // from class: com.google.android.gms.internal.ads.zzftc
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        int i2 = zzftl.zzb;
                        bundle.putString(RemoteConfigConstants.RequestFieldKey.APP_ID, (String) obj);
                    }

                    public /* synthetic */ Consumer andThen(Consumer consumer) {
                        return Consumer$CC.$default$andThen(this, consumer);
                    }
                });
                zzfscVar.zzg(bundle, new zzftk(zzftlVar, zzftqVar));
                return;
            }
            throw null;
        } catch (RemoteException e) {
            zzc.zzb(e, "switchDisplayMode overlay display to %d from: %s", Integer.valueOf(i), zzftlVar.zze);
        }
    }

    public static /* synthetic */ void zzb(zzftl zzftlVar, zzfss zzfssVar, zzftq zzftqVar) {
        try {
            zzfuc zzfucVar = zzftlVar.zza;
            if (zzfucVar != null) {
                zzfsc zzfscVar = (zzfsc) zzfucVar.zzc();
                if (zzfscVar == null) {
                    return;
                }
                String str = zzftlVar.zze;
                final Bundle bundle = new Bundle();
                bundle.putString("callerPackage", str);
                zzi(zzfssVar.zzb(), new Consumer() { // from class: com.google.android.gms.internal.ads.zzfte
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        int i = zzftl.zzb;
                        bundle.putString("sessionToken", (String) obj);
                    }

                    public /* synthetic */ Consumer andThen(Consumer consumer) {
                        return Consumer$CC.$default$andThen(this, consumer);
                    }
                });
                zzi(zzfssVar.zza(), new Consumer() { // from class: com.google.android.gms.internal.ads.zzftf
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        int i = zzftl.zzb;
                        bundle.putString(RemoteConfigConstants.RequestFieldKey.APP_ID, (String) obj);
                    }

                    public /* synthetic */ Consumer andThen(Consumer consumer) {
                        return Consumer$CC.$default$andThen(this, consumer);
                    }
                });
                zzfscVar.zze(bundle, new zzftk(zzftlVar, zzftqVar));
                return;
            }
            throw null;
        } catch (RemoteException e) {
            zzc.zzb(e, "dismiss overlay display from: %s", zzftlVar.zze);
        }
    }

    public static /* synthetic */ void zzc(zzftl zzftlVar, zzftn zzftnVar, zzftq zzftqVar) {
        try {
            zzfuc zzfucVar = zzftlVar.zza;
            if (zzfucVar != null) {
                zzfsc zzfscVar = (zzfsc) zzfucVar.zzc();
                if (zzfscVar == null) {
                    return;
                }
                String str = zzftlVar.zze;
                final Bundle bundle = new Bundle();
                bundle.putString("callerPackage", str);
                bundle.putBinder("windowToken", zzftnVar.zzf());
                zzi(zzftnVar.zzg(), new Consumer() { // from class: com.google.android.gms.internal.ads.zzftj
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        int i = zzftl.zzb;
                        bundle.putString("adFieldEnifd", (String) obj);
                    }

                    public /* synthetic */ Consumer andThen(Consumer consumer) {
                        return Consumer$CC.$default$andThen(this, consumer);
                    }
                });
                bundle.putInt("layoutGravity", zzftnVar.zzc());
                bundle.putFloat("layoutVerticalMargin", zzftnVar.zza());
                bundle.putInt("displayMode", 0);
                bundle.putInt("triggerMode", 0);
                bundle.putInt("windowWidthPx", zzftnVar.zze());
                zzi(null, new Consumer() { // from class: com.google.android.gms.internal.ads.zzfsx
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        int i = zzftl.zzb;
                        bundle.putString("deeplinkUrl", (String) obj);
                    }

                    public /* synthetic */ Consumer andThen(Consumer consumer) {
                        return Consumer$CC.$default$andThen(this, consumer);
                    }
                });
                zzi(null, new Consumer() { // from class: com.google.android.gms.internal.ads.zzfsy
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        int i = zzftl.zzb;
                        bundle.putString("sessionToken", (String) obj);
                    }

                    public /* synthetic */ Consumer andThen(Consumer consumer) {
                        return Consumer$CC.$default$andThen(this, consumer);
                    }
                });
                zzi(zzftnVar.zzh(), new Consumer() { // from class: com.google.android.gms.internal.ads.zzfsz
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        int i = zzftl.zzb;
                        bundle.putString(RemoteConfigConstants.RequestFieldKey.APP_ID, (String) obj);
                    }

                    public /* synthetic */ Consumer andThen(Consumer consumer) {
                        return Consumer$CC.$default$andThen(this, consumer);
                    }
                });
                zzi(null, new Consumer() { // from class: com.google.android.gms.internal.ads.zzfta
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        int i = zzftl.zzb;
                        bundle.putString("thirdPartyAuthCallerId", (String) obj);
                    }

                    public /* synthetic */ Consumer andThen(Consumer consumer) {
                        return Consumer$CC.$default$andThen(this, consumer);
                    }
                });
                bundle.putBoolean("stableSessionToken", true);
                zzfscVar.zzf(str, bundle, new zzftk(zzftlVar, zzftqVar));
                return;
            }
            throw null;
        } catch (RemoteException e) {
            zzc.zzb(e, "show overlay display from: %s", zzftlVar.zze);
        }
    }

    public static /* synthetic */ boolean zzh(String str) {
        if (!zzk(str)) {
            return true;
        }
        return false;
    }

    private static void zzi(String str, Consumer consumer) {
        if (!zzk(str)) {
            str.getClass();
            consumer.accept(str.trim());
        }
    }

    private static boolean zzj(zzftq zzftqVar, String str, List list) {
        if (Collection.EL.stream(list).anyMatch(new Predicate() { // from class: com.google.android.gms.internal.ads.zzfti
            public /* synthetic */ Predicate and(Predicate predicate) {
                return Predicate$CC.$default$and(this, predicate);
            }

            public /* synthetic */ Predicate negate() {
                return Predicate$CC.$default$negate(this);
            }

            public /* synthetic */ Predicate or(Predicate predicate) {
                return Predicate$CC.$default$or(this, predicate);
            }

            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return zzftl.zzh((String) obj);
            }
        })) {
            return true;
        }
        zzc.zza(str, new Object[0]);
        zzfto zzc2 = zzftp.zzc();
        zzc2.zzb(8160);
        zzftqVar.zza(zzc2.zzc());
        return false;
    }

    private static boolean zzk(String str) {
        return zzfvt.zzc(str).trim().isEmpty();
    }

    public final void zzd() {
        zzfuc zzfucVar = this.zza;
        if (zzfucVar == null) {
            return;
        }
        zzc.zzc("unbind LMD display overlay service", new Object[0]);
        zzfucVar.zzn();
    }

    public final void zze(final zzfss zzfssVar, final zzftq zzftqVar) {
        zzfuc zzfucVar = this.zza;
        if (zzfucVar == null) {
            zzc.zza("error: %s", "Play Store not found.");
        } else if (!zzj(zzftqVar, "Failed to apply OverlayDisplayDismissRequest: missing appId and sessionToken.", Arrays.asList(zzfssVar.zzb(), zzfssVar.zza()))) {
        } else {
            zzfucVar.zzm(new Runnable() { // from class: com.google.android.gms.internal.ads.zzftb
                @Override // java.lang.Runnable
                public final void run() {
                    zzftl.zzb(zzftl.this, zzfssVar, zzftqVar);
                }
            });
        }
    }

    public final void zzf(final zzftn zzftnVar, final zzftq zzftqVar) {
        zzfuc zzfucVar = this.zza;
        if (zzfucVar == null) {
            zzc.zza("error: %s", "Play Store not found.");
        } else if (!zzj(zzftqVar, "Failed to apply OverlayDisplayShowRequest: missing appId and sessionToken.", Arrays.asList(null, zzftnVar.zzh()))) {
        } else {
            zzfucVar.zzm(new Runnable() { // from class: com.google.android.gms.internal.ads.zzftg
                @Override // java.lang.Runnable
                public final void run() {
                    zzftl.zzc(zzftl.this, zzftnVar, zzftqVar);
                }
            });
        }
    }

    public final void zzg(final zzfts zzftsVar, final zzftq zzftqVar, final int i) {
        zzfuc zzfucVar = this.zza;
        if (zzfucVar == null) {
            zzc.zza("error: %s", "Play Store not found.");
        } else if (!zzj(zzftqVar, "Failed to apply OverlayDisplayUpdateRequest: missing appId and sessionToken.", Arrays.asList(zzftsVar.zzb(), zzftsVar.zza()))) {
        } else {
            zzfucVar.zzm(new Runnable() { // from class: com.google.android.gms.internal.ads.zzftd
                @Override // java.lang.Runnable
                public final void run() {
                    zzftl.zza(zzftl.this, zzftsVar, i, zzftqVar);
                }
            });
        }
    }
}
