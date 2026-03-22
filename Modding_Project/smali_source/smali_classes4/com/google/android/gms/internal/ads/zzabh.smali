.class public final Lcom/google/android/gms/internal/ads/zzabh;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcb;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzca;

.field private final zzc:Landroid/util/SparseArray;

.field private final zzd:Ljava/util/List;

.field private final zze:Lcom/google/android/gms/internal/ads/zzbv;

.field private final zzf:Z

.field private final zzg:Lcom/google/android/gms/internal/ads/zzach;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzdg;

.field private final zzi:Ljava/util/concurrent/CopyOnWriteArraySet;

.field private zzj:Lcom/google/android/gms/internal/ads/zzeq;

.field private final zzk:Lcom/google/android/gms/internal/ads/zzz;

.field private zzl:Lcom/google/android/gms/internal/ads/zzdq;

.field private zzm:Landroid/util/Pair;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzn:I

.field private zzo:I

.field private zzp:J

.field private zzq:J

.field private zzr:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzaba;Lcom/google/android/gms/internal/ads/zzabg;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaba;->zza(Lcom/google/android/gms/internal/ads/zzaba;)Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzabh;->zza:Landroid/content/Context;

    .line 9
    .line 10
    new-instance p2, Lcom/google/android/gms/internal/ads/zzeq;

    .line 11
    .line 12
    const/16 v0, 0xa

    .line 13
    .line 14
    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzeq;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzabh;->zzj:Lcom/google/android/gms/internal/ads/zzeq;

    .line 18
    .line 19
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaba;->zzc(Lcom/google/android/gms/internal/ads/zzaba;)Lcom/google/android/gms/internal/ads/zzca;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzdc;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzabh;->zzb:Lcom/google/android/gms/internal/ads/zzca;

    .line 27
    .line 28
    new-instance p2, Landroid/util/SparseArray;

    .line 29
    .line 30
    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzabh;->zzc:Landroid/util/SparseArray;

    .line 34
    .line 35
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaba;->zzi(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzabh;->zzd:Ljava/util/List;

    .line 40
    .line 41
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaba;->zzb(Lcom/google/android/gms/internal/ads/zzaba;)Lcom/google/android/gms/internal/ads/zzbv;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzabh;->zze:Lcom/google/android/gms/internal/ads/zzbv;

    .line 46
    .line 47
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaba;->zzj(Lcom/google/android/gms/internal/ads/zzaba;)Z

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzabh;->zzf:Z

    .line 52
    .line 53
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaba;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Lcom/google/android/gms/internal/ads/zzdg;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzabh;->zzh:Lcom/google/android/gms/internal/ads/zzdg;

    .line 58
    .line 59
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaal;

    .line 60
    .line 61
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaba;->zzh(Lcom/google/android/gms/internal/ads/zzaba;)Lcom/google/android/gms/internal/ads/zzabl;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaal;-><init>(Lcom/google/android/gms/internal/ads/zzabl;Lcom/google/android/gms/internal/ads/zzdg;)V

    .line 66
    .line 67
    .line 68
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzabh;->zzg:Lcom/google/android/gms/internal/ads/zzach;

    .line 69
    .line 70
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 71
    .line 72
    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 73
    .line 74
    .line 75
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzabh;->zzi:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 76
    .line 77
    new-instance p1, Lcom/google/android/gms/internal/ads/zzx;

    .line 78
    .line 79
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzx;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzx;->zzaj()Lcom/google/android/gms/internal/ads/zzz;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzabh;->zzk:Lcom/google/android/gms/internal/ads/zzz;

    .line 87
    .line 88
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzabh;->zzp:J

    .line 94
    .line 95
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzabh;->zzq:J

    .line 96
    .line 97
    const/4 p1, -0x1

    .line 98
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzabh;->zzr:I

    .line 99
    .line 100
    const/4 p1, 0x0

    .line 101
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzabh;->zzo:I

    .line 102
    .line 103
    return-void
.end method

.method public static bridge synthetic zzA(Lcom/google/android/gms/internal/ads/zzabh;)Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/google/android/gms/internal/ads/zzabh;->zzr:I

    .line 2
    .line 3
    const/4 v0, -0x1

    .line 4
    if-eq p0, v0, :cond_0

    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    return p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return p0
.end method

.method private static zzB(Lcom/google/android/gms/internal/ads/zzk;)Lcom/google/android/gms/internal/ads/zzk;
    .locals 1
    .param p0    # Lcom/google/android/gms/internal/ads/zzk;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzk;->zzf()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    return-object p0

    .line 11
    :cond_1
    :goto_0
    sget-object p0, Lcom/google/android/gms/internal/ads/zzk;->zza:Lcom/google/android/gms/internal/ads/zzk;

    .line 12
    .line 13
    return-object p0
.end method

.method public static bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzabh;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzabh;->zzq:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzabh;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzabh;->zzp:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzk;)Lcom/google/android/gms/internal/ads/zzk;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzabh;->zzB(Lcom/google/android/gms/internal/ads/zzk;)Lcom/google/android/gms/internal/ads/zzk;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static bridge synthetic zzd(Lcom/google/android/gms/internal/ads/zzabh;)Lcom/google/android/gms/internal/ads/zzeq;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzabh;->zzj:Lcom/google/android/gms/internal/ads/zzeq;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic zzf(Lcom/google/android/gms/internal/ads/zzabh;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzabh;->zzn:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzabh;->zzn:I

    .line 6
    .line 7
    return-void
.end method

.method public static bridge synthetic zzg(Lcom/google/android/gms/internal/ads/zzabh;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzabh;->zzq:J

    .line 2
    .line 3
    return-void
.end method

.method public static bridge synthetic zzh(Lcom/google/android/gms/internal/ads/zzabh;Lcom/google/android/gms/internal/ads/zzeq;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzabh;->zzj:Lcom/google/android/gms/internal/ads/zzeq;

    .line 2
    .line 3
    return-void
.end method

.method public static bridge synthetic zzi(Lcom/google/android/gms/internal/ads/zzabh;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzabh;->zzg:Lcom/google/android/gms/internal/ads/zzach;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzach;->zzh()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static bridge synthetic zzj(Lcom/google/android/gms/internal/ads/zzabh;Z)V
    .locals 9

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzabh;->zzo:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_2

    .line 5
    .line 6
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzabh;->zzn:I

    .line 7
    .line 8
    add-int/2addr v0, v1

    .line 9
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzabh;->zzn:I

    .line 10
    .line 11
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzabh;->zzg:Lcom/google/android/gms/internal/ads/zzach;

    .line 12
    .line 13
    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/ads/zzach;->zzj(Z)V

    .line 14
    .line 15
    .line 16
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzabh;->zzj:Lcom/google/android/gms/internal/ads/zzeq;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeq;->zza()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-le p1, v1, :cond_0

    .line 23
    .line 24
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzabh;->zzj:Lcom/google/android/gms/internal/ads/zzeq;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeq;->zzb()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzabh;->zzj:Lcom/google/android/gms/internal/ads/zzeq;

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeq;->zza()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-ne p1, v1, :cond_1

    .line 37
    .line 38
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzabh;->zzj:Lcom/google/android/gms/internal/ads/zzeq;

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeq;->zzb()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Lcom/google/android/gms/internal/ads/zzabf;

    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    iget-wide v5, p1, Lcom/google/android/gms/internal/ads/zzabf;->zza:J

    .line 50
    .line 51
    iget v7, p1, Lcom/google/android/gms/internal/ads/zzabf;->zzb:I

    .line 52
    .line 53
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzabh;->zzk:Lcom/google/android/gms/internal/ads/zzz;

    .line 54
    .line 55
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfyc;->zzn()Lcom/google/android/gms/internal/ads/zzfyc;

    .line 56
    .line 57
    .line 58
    move-result-object v8

    .line 59
    const/4 v3, 0x1

    .line 60
    invoke-interface/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzach;->zzl(ILcom/google/android/gms/internal/ads/zzz;JILjava/util/List;)V

    .line 61
    .line 62
    .line 63
    :cond_1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzabh;->zzp:J

    .line 69
    .line 70
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzabh;->zzq:J

    .line 71
    .line 72
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzabh;->zzl:Lcom/google/android/gms/internal/ads/zzdq;

    .line 73
    .line 74
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdc;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaay;

    .line 78
    .line 79
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzaay;-><init>(Lcom/google/android/gms/internal/ads/zzabh;)V

    .line 80
    .line 81
    .line 82
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzdq;->zzi(Ljava/lang/Runnable;)Z

    .line 83
    .line 84
    .line 85
    :cond_2
    return-void
.end method

.method public static bridge synthetic zzk(Lcom/google/android/gms/internal/ads/zzabh;Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzabh;->zzg:Lcom/google/android/gms/internal/ads/zzach;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzach;->zzk(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static bridge synthetic zzl(Lcom/google/android/gms/internal/ads/zzabh;JJ)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzabh;->zzg:Lcom/google/android/gms/internal/ads/zzach;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzach;->zzo(JJ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static bridge synthetic zzm(Lcom/google/android/gms/internal/ads/zzabh;J)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzabh;->zzg:Lcom/google/android/gms/internal/ads/zzach;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzach;->zzp(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static bridge synthetic zzn(Lcom/google/android/gms/internal/ads/zzabh;I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzabh;->zzg:Lcom/google/android/gms/internal/ads/zzach;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzach;->zzq(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static bridge synthetic zzo(Lcom/google/android/gms/internal/ads/zzabh;F)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzabh;->zzg:Lcom/google/android/gms/internal/ads/zzach;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzach;->zzt(F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static bridge synthetic zzp(Lcom/google/android/gms/internal/ads/zzabh;Lcom/google/android/gms/internal/ads/zzabi;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzabh;->zzg:Lcom/google/android/gms/internal/ads/zzach;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzach;->zzv(Lcom/google/android/gms/internal/ads/zzabi;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static bridge synthetic zzq(Lcom/google/android/gms/internal/ads/zzabh;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzabh;->zzg:Lcom/google/android/gms/internal/ads/zzach;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzach;->zzw()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static bridge synthetic zzx(Lcom/google/android/gms/internal/ads/zzabh;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzabh;->zzf:Z

    .line 2
    .line 3
    return p0
.end method

.method public static bridge synthetic zzy(Lcom/google/android/gms/internal/ads/zzabh;Z)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzabh;->zzg:Lcom/google/android/gms/internal/ads/zzach;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzach;->zzD(Z)Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public static bridge synthetic zzz(Lcom/google/android/gms/internal/ads/zzabh;Lcom/google/android/gms/internal/ads/zzz;I)Z
    .locals 13

    .line 1
    const/4 p2, 0x0

    .line 2
    const/4 v0, 0x1

    .line 3
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzabh;->zzo:I

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    move v1, v0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v1, p2

    .line 10
    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdc;->zzf(Z)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzz;->zzC:Lcom/google/android/gms/internal/ads/zzk;

    .line 14
    .line 15
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzabh;->zzB(Lcom/google/android/gms/internal/ads/zzk;)Lcom/google/android/gms/internal/ads/zzk;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzk;->zzd:I

    .line 20
    .line 21
    const/4 v3, 0x7

    .line 22
    if-ne v2, v3, :cond_4

    .line 23
    .line 24
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 25
    .line 26
    const/16 v4, 0x22

    .line 27
    .line 28
    if-ge v2, v4, :cond_1

    .line 29
    .line 30
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdo;->zzb()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-nez v2, :cond_2

    .line 35
    .line 36
    :cond_1
    move v2, v3

    .line 37
    goto :goto_2

    .line 38
    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzk;->zzc()Lcom/google/android/gms/internal/ads/zzi;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    const/4 v0, 0x6

    .line 43
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzi;->zzd(I)Lcom/google/android/gms/internal/ads/zzi;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzi;->zzg()Lcom/google/android/gms/internal/ads/zzk;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    :cond_3
    :goto_1
    move-object v4, v1

    .line 51
    goto :goto_3

    .line 52
    :cond_4
    :goto_2
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdo;->zzc(I)Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-nez v3, :cond_3

    .line 57
    .line 58
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 59
    .line 60
    const/16 v4, 0x1d

    .line 61
    .line 62
    if-lt v3, v4, :cond_3

    .line 63
    .line 64
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    new-array v0, v0, [Ljava/lang/Object;

    .line 69
    .line 70
    aput-object v1, v0, p2

    .line 71
    .line 72
    sget-object p2, Lcom/google/android/gms/internal/ads/zzeu;->zza:Ljava/lang/String;

    .line 73
    .line 74
    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 75
    .line 76
    const-string v1, "Color transfer %d is not supported. Falling back to OpenGl tone mapping."

    .line 77
    .line 78
    invoke-static {p2, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    const-string v0, "PlaybackVidGraphWrapper"

    .line 83
    .line 84
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/zzdx;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    sget-object v1, Lcom/google/android/gms/internal/ads/zzk;->zza:Lcom/google/android/gms/internal/ads/zzk;

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :goto_3
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzabh;->zzh:Lcom/google/android/gms/internal/ads/zzdg;

    .line 91
    .line 92
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdc;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    const/4 v1, 0x0

    .line 100
    invoke-interface {p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzdg;->zzd(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/gms/internal/ads/zzdq;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzabh;->zzl:Lcom/google/android/gms/internal/ads/zzdq;

    .line 105
    .line 106
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzabh;->zzb:Lcom/google/android/gms/internal/ads/zzca;

    .line 107
    .line 108
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzabh;->zza:Landroid/content/Context;

    .line 109
    .line 110
    sget-object v5, Lcom/google/android/gms/internal/ads/zzn;->zza:Lcom/google/android/gms/internal/ads/zzn;

    .line 111
    .line 112
    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    new-instance v7, Lcom/google/android/gms/internal/ads/zzaaz;

    .line 116
    .line 117
    invoke-direct {v7, p2}, Lcom/google/android/gms/internal/ads/zzaaz;-><init>(Lcom/google/android/gms/internal/ads/zzdq;)V

    .line 118
    .line 119
    .line 120
    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzabh;->zze:Lcom/google/android/gms/internal/ads/zzbv;

    .line 121
    .line 122
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzabh;->zzd:Ljava/util/List;

    .line 123
    .line 124
    const-wide/16 v10, 0x0

    .line 125
    .line 126
    const/4 v12, 0x0

    .line 127
    move-object v6, p0

    .line 128
    invoke-interface/range {v2 .. v12}, Lcom/google/android/gms/internal/ads/zzca;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzk;Lcom/google/android/gms/internal/ads/zzn;Lcom/google/android/gms/internal/ads/zzcb;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzbv;Ljava/util/List;JZ)Lcom/google/android/gms/internal/ads/zzcc;

    .line 129
    .line 130
    .line 131
    throw v1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzbw; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :catch_0
    move-exception v0

    .line 133
    move-object p0, v0

    .line 134
    new-instance p2, Lcom/google/android/gms/internal/ads/zzacg;

    .line 135
    .line 136
    invoke-direct {p2, p0, p1}, Lcom/google/android/gms/internal/ads/zzacg;-><init>(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzz;)V

    .line 137
    .line 138
    .line 139
    throw p2
.end method


# virtual methods
.method public final zze(I)Lcom/google/android/gms/internal/ads/zzach;
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzabh;->zzc:Landroid/util/SparseArray;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzeu;->zzH(Landroid/util/SparseArray;I)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lcom/google/android/gms/internal/ads/zzach;

    .line 15
    .line 16
    return-object p1

    .line 17
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzabh;->zza:Landroid/content/Context;

    .line 18
    .line 19
    new-instance v2, Lcom/google/android/gms/internal/ads/zzabb;

    .line 20
    .line 21
    invoke-direct {v2, p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzabb;-><init>(Lcom/google/android/gms/internal/ads/zzabh;Landroid/content/Context;I)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzabh;->zzi:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    return-object v2
.end method

.method public final zzr()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzel;->zza:Lcom/google/android/gms/internal/ads/zzel;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzel;->zzb()I

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzel;->zza()I

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzabh;->zzm:Landroid/util/Pair;

    .line 11
    .line 12
    return-void
.end method

.method public final zzs()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzabh;->zzo:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabh;->zzl:Lcom/google/android/gms/internal/ads/zzdq;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/zzdq;->zzf(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzabh;->zzm:Landroid/util/Pair;

    .line 16
    .line 17
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzabh;->zzo:I

    .line 18
    .line 19
    return-void
.end method

.method public final zzt(Landroid/view/Surface;Lcom/google/android/gms/internal/ads/zzel;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabh;->zzm:Landroid/util/Pair;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Landroid/view/Surface;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabh;->zzm:Landroid/util/Pair;

    .line 16
    .line 17
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Lcom/google/android/gms/internal/ads/zzel;

    .line 20
    .line 21
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzel;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzabh;->zzm:Landroid/util/Pair;

    .line 33
    .line 34
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzel;->zzb()I

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzel;->zza()I

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final zzu(I)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzabh;->zzr:I

    .line 3
    .line 4
    return-void
.end method

.method public final zzv()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabh;->zzg:Lcom/google/android/gms/internal/ads/zzach;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzach;->zzx()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zzw()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabh;->zzg:Lcom/google/android/gms/internal/ads/zzach;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzach;->zzy()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
