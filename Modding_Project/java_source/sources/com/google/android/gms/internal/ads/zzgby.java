package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import j$.util.Objects;
import java.util.Set;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.logging.Level;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public abstract class zzgby extends zzgcd {
    private static final zzgdh zza = new zzgdh(zzgby.class);
    private zzfxx zzb;
    private final boolean zzc;
    private final boolean zzd;

    public zzgby(zzfxx zzfxxVar, boolean z, boolean z2) {
        super(zzfxxVar.size());
        this.zzb = zzfxxVar;
        this.zzc = z;
        this.zzd = z2;
    }

    private final void zzD(int i, Future future) {
        try {
            zzx(i, zzgeb.zza(future));
        } catch (ExecutionException e) {
            zzF(e.getCause());
        } catch (Throwable th) {
            zzF(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzE(zzfxx zzfxxVar) {
        boolean z;
        int zzB = zzB();
        int i = 0;
        if (zzB >= 0) {
            z = true;
        } else {
            z = false;
        }
        zzfvc.zzm(z, "Less than 0 remaining futures");
        if (zzB == 0) {
            if (zzfxxVar != null) {
                zzgai it = zzfxxVar.iterator();
                while (it.hasNext()) {
                    Future future = (Future) it.next();
                    if (!future.isCancelled()) {
                        zzD(i, future);
                    }
                    i++;
                }
            }
            this.seenExceptionsField = null;
            zzy();
            zzA(2);
        }
    }

    private final void zzF(Throwable th) {
        th.getClass();
        if (this.zzc && !zzd(th) && zzI(zzC(), th)) {
            zzG(th);
        } else if (th instanceof Error) {
            zzG(th);
        }
    }

    private static void zzG(Throwable th) {
        String str;
        if (true != (th instanceof Error)) {
            str = "Got more than one input Future failure. Logging failures after the first";
        } else {
            str = "Input Future failed with Error";
        }
        zza.zza().logp(Level.SEVERE, "com.google.common.util.concurrent.AggregateFuture", "log", str, th);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzH(int i, ListenableFuture listenableFuture) {
        try {
            if (listenableFuture.isCancelled()) {
                this.zzb = null;
                cancel(false);
            } else {
                zzD(i, listenableFuture);
            }
            zzE(null);
        } catch (Throwable th) {
            zzE(null);
            throw th;
        }
    }

    private static boolean zzI(Set set, Throwable th) {
        while (th != null) {
            if (!set.add(th)) {
                return false;
            }
            th = th.getCause();
        }
        return true;
    }

    public void zzA(int i) {
        this.zzb = null;
    }

    @Override // com.google.android.gms.internal.ads.zzgbm
    public final String zza() {
        zzfxx zzfxxVar = this.zzb;
        if (zzfxxVar != null) {
            return "futures=".concat(zzfxxVar.toString());
        }
        return super.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzgbm
    public final void zzb() {
        zzfxx zzfxxVar = this.zzb;
        boolean z = true;
        zzA(1);
        boolean isCancelled = isCancelled();
        if (zzfxxVar == null) {
            z = false;
        }
        if (z & isCancelled) {
            boolean zzo = zzo();
            zzgai it = zzfxxVar.iterator();
            while (it.hasNext()) {
                ((Future) it.next()).cancel(zzo);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgcd
    public final void zzw(Set set) {
        set.getClass();
        if (!isCancelled()) {
            Throwable zzi = zzi();
            Objects.requireNonNull(zzi);
            zzI(set, zzi);
        }
    }

    public abstract void zzx(int i, Object obj);

    public abstract void zzy();

    public final void zzz() {
        final zzfxx zzfxxVar;
        Objects.requireNonNull(this.zzb);
        if (this.zzb.isEmpty()) {
            zzy();
        } else if (this.zzc) {
            zzgai it = this.zzb.iterator();
            final int i = 0;
            while (it.hasNext()) {
                final ListenableFuture listenableFuture = (ListenableFuture) it.next();
                int i2 = i + 1;
                if (listenableFuture.isDone()) {
                    zzH(i, listenableFuture);
                } else {
                    listenableFuture.addListener(new Runnable() { // from class: com.google.android.gms.internal.ads.zzgbw
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzgby.this.zzH(i, listenableFuture);
                        }
                    }, zzgcm.INSTANCE);
                }
                i = i2;
            }
        } else {
            zzfxx zzfxxVar2 = this.zzb;
            if (true != this.zzd) {
                zzfxxVar = null;
            } else {
                zzfxxVar = zzfxxVar2;
            }
            Runnable runnable = new Runnable() { // from class: com.google.android.gms.internal.ads.zzgbx
                @Override // java.lang.Runnable
                public final void run() {
                    zzgby.this.zzE(zzfxxVar);
                }
            };
            zzgai it2 = zzfxxVar2.iterator();
            while (it2.hasNext()) {
                ListenableFuture listenableFuture2 = (ListenableFuture) it2.next();
                if (listenableFuture2.isDone()) {
                    zzE(zzfxxVar);
                } else {
                    listenableFuture2.addListener(runnable, zzgcm.INSTANCE);
                }
            }
        }
    }
}
