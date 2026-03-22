package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.util.SparseArray;
import com.google.android.gms.internal.ads.zzbca;
import java.util.ArrayList;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzeax extends zzeay {
    private static final SparseArray zzb;
    private final Context zzc;
    private final zzcuw zzd;
    private final TelephonyManager zze;
    private final zzeap zzf;
    private zzbca.zzq zzg;

    static {
        SparseArray sparseArray = new SparseArray();
        zzb = sparseArray;
        sparseArray.put(NetworkInfo.DetailedState.CONNECTED.ordinal(), zzbca.zzaf.zzd.CONNECTED);
        int ordinal = NetworkInfo.DetailedState.AUTHENTICATING.ordinal();
        zzbca.zzaf.zzd zzdVar = zzbca.zzaf.zzd.CONNECTING;
        sparseArray.put(ordinal, zzdVar);
        sparseArray.put(NetworkInfo.DetailedState.CONNECTING.ordinal(), zzdVar);
        sparseArray.put(NetworkInfo.DetailedState.OBTAINING_IPADDR.ordinal(), zzdVar);
        sparseArray.put(NetworkInfo.DetailedState.DISCONNECTING.ordinal(), zzbca.zzaf.zzd.DISCONNECTING);
        int ordinal2 = NetworkInfo.DetailedState.BLOCKED.ordinal();
        zzbca.zzaf.zzd zzdVar2 = zzbca.zzaf.zzd.DISCONNECTED;
        sparseArray.put(ordinal2, zzdVar2);
        sparseArray.put(NetworkInfo.DetailedState.DISCONNECTED.ordinal(), zzdVar2);
        sparseArray.put(NetworkInfo.DetailedState.FAILED.ordinal(), zzdVar2);
        sparseArray.put(NetworkInfo.DetailedState.IDLE.ordinal(), zzdVar2);
        sparseArray.put(NetworkInfo.DetailedState.SCANNING.ordinal(), zzdVar2);
        sparseArray.put(NetworkInfo.DetailedState.SUSPENDED.ordinal(), zzbca.zzaf.zzd.SUSPENDED);
        sparseArray.put(NetworkInfo.DetailedState.CAPTIVE_PORTAL_CHECK.ordinal(), zzdVar);
        sparseArray.put(NetworkInfo.DetailedState.VERIFYING_POOR_LINK.ordinal(), zzdVar);
    }

    public zzeax(Context context, zzcuw zzcuwVar, zzeap zzeapVar, zzeal zzealVar, com.google.android.gms.ads.internal.util.zzg zzgVar) {
        super(zzealVar, zzgVar);
        this.zzc = context;
        this.zzd = zzcuwVar;
        this.zzf = zzeapVar;
        this.zze = (TelephonyManager) context.getSystemService("phone");
    }

    public static /* bridge */ /* synthetic */ zzbca.zzab zza(zzeax zzeaxVar, Bundle bundle) {
        zzbca.zzab.zzb zzbVar;
        zzbca.zzab.zza zza = zzbca.zzab.zza();
        int i = bundle.getInt("cnt", -2);
        int i2 = bundle.getInt("gnt", 0);
        if (i == -1) {
            zzeaxVar.zzg = zzbca.zzq.ENUM_TRUE;
        } else {
            zzeaxVar.zzg = zzbca.zzq.ENUM_FALSE;
            if (i != 0) {
                if (i != 1) {
                    zza.zzd(zzbca.zzab.zzc.NETWORKTYPE_UNSPECIFIED);
                } else {
                    zza.zzd(zzbca.zzab.zzc.WIFI);
                }
            } else {
                zza.zzd(zzbca.zzab.zzc.CELL);
            }
            switch (i2) {
                case 1:
                case 2:
                case 4:
                case 7:
                case 11:
                case 16:
                    zzbVar = zzbca.zzab.zzb.TWO_G;
                    break;
                case 3:
                case 5:
                case 6:
                case 8:
                case 9:
                case 10:
                case 12:
                case 14:
                case 15:
                case 17:
                    zzbVar = zzbca.zzab.zzb.THREE_G;
                    break;
                case 13:
                    zzbVar = zzbca.zzab.zzb.LTE;
                    break;
                default:
                    zzbVar = zzbca.zzab.zzb.CELLULAR_NETWORK_TYPE_UNSPECIFIED;
                    break;
            }
            zza.zzc(zzbVar);
        }
        return zza.zzbr();
    }

    public static /* bridge */ /* synthetic */ zzbca.zzaf.zzd zzb(zzeax zzeaxVar, Bundle bundle) {
        return (zzbca.zzaf.zzd) zzb.get(zzfdd.zza(zzfdd.zza(bundle, "device"), "network").getInt("active_network_state", -1), zzbca.zzaf.zzd.UNSPECIFIED);
    }

    public static /* bridge */ /* synthetic */ byte[] zze(zzeax zzeaxVar, boolean z, ArrayList arrayList, zzbca.zzab zzabVar, zzbca.zzaf.zzd zzdVar) {
        boolean z2;
        zzbca.zzaf.zza.C0042zza zzn = zzbca.zzaf.zza.zzn();
        zzn.zzn(arrayList);
        Context context = zzeaxVar.zzc;
        boolean z3 = false;
        if (Settings.Global.getInt(context.getContentResolver(), "airplane_mode_on", 0) != 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        zzn.zzD(zzg(z2));
        zzn.zzE(com.google.android.gms.ads.internal.zzv.zzs().zzg(context, zzeaxVar.zze));
        zzeap zzeapVar = zzeaxVar.zzf;
        zzn.zzM(zzeapVar.zze());
        zzn.zzL(zzeapVar.zzb());
        zzn.zzG(zzeapVar.zza());
        zzn.zzH(zzdVar);
        zzn.zzJ(zzabVar);
        zzn.zzK(zzeaxVar.zzg);
        zzn.zzN(zzg(z));
        zzn.zzP(zzeapVar.zzd());
        zzn.zzO(com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis());
        if (Settings.Global.getInt(context.getContentResolver(), "wifi_on", 0) != 0) {
            z3 = true;
        }
        zzn.zzQ(zzg(z3));
        return zzn.zzbr().zzaV();
    }

    private static final zzbca.zzq zzg(boolean z) {
        if (z) {
            return zzbca.zzq.ENUM_TRUE;
        }
        return zzbca.zzq.ENUM_FALSE;
    }

    public final void zzd(boolean z) {
        zzgcy.zzr(this.zzd.zzb(new Bundle()), new zzeaw(this, z), zzcaa.zzg);
    }
}
