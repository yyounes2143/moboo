package com.google.android.gms.ads.nonagon.signalgeneration;

import android.os.Bundle;
import android.util.JsonReader;
import androidx.annotation.Nullable;
import com.google.android.gms.internal.ads.zzbcv;
import com.google.android.gms.internal.ads.zzbvl;
import com.google.android.gms.internal.ads.zzdrl;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbk {
    public final String zza;
    public String zzb;
    @Nullable
    public zzbvl zzd;
    @Nullable
    public Bundle zze;
    private long zzg;
    private long zzh;
    @Nullable
    public String zzc = null;
    public Bundle zzf = new Bundle();

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public zzbk(JsonReader jsonReader, @Nullable zzbvl zzbvlVar) throws IOException {
        Bundle bundle;
        char c;
        this.zzg = -1L;
        this.zzh = -1L;
        this.zzd = zzbvlVar;
        HashMap hashMap = new HashMap();
        jsonReader.beginObject();
        String str = "";
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName = nextName == null ? "" : nextName;
            switch (nextName.hashCode()) {
                case -1573145462:
                    if (nextName.equals("start_time")) {
                        c = 2;
                        break;
                    }
                    c = 65535;
                    break;
                case -995427962:
                    if (nextName.equals("params")) {
                        c = 0;
                        break;
                    }
                    c = 65535;
                    break;
                case -271442291:
                    if (nextName.equals("signal_dictionary")) {
                        c = 1;
                        break;
                    }
                    c = 65535;
                    break;
                case 1725551537:
                    if (nextName.equals("end_time")) {
                        c = 3;
                        break;
                    }
                    c = 65535;
                    break;
                default:
                    c = 65535;
                    break;
            }
            if (c != 0) {
                if (c != 1) {
                    if (c != 2) {
                        if (c != 3) {
                            jsonReader.skipValue();
                        } else {
                            this.zzh = jsonReader.nextLong();
                        }
                    } else {
                        this.zzg = jsonReader.nextLong();
                    }
                } else {
                    hashMap = new HashMap();
                    jsonReader.beginObject();
                    while (jsonReader.hasNext()) {
                        hashMap.put(jsonReader.nextName(), jsonReader.nextString());
                    }
                    jsonReader.endObject();
                }
            } else {
                str = jsonReader.nextString();
            }
        }
        this.zza = str;
        jsonReader.endObject();
        for (Map.Entry entry : hashMap.entrySet()) {
            if (entry.getKey() != null && entry.getValue() != null) {
                this.zzf.putString((String) entry.getKey(), (String) entry.getValue());
            }
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzcq)).booleanValue() && zzbvlVar != null && (bundle = zzbvlVar.zzm) != null) {
            bundle.putLong(zzdrl.GET_SIGNALS_SDKCORE_START.zza(), this.zzg);
            zzbvlVar.zzm.putLong(zzdrl.GET_SIGNALS_SDKCORE_END.zza(), this.zzh);
        }
    }
}
