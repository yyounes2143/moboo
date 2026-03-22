.class public final Lcom/google/android/gms/internal/ads/zzgfj;
.super Ljava/lang/Object;
.source "Proguard"


# static fields
.field public static final synthetic zza:I

.field private static final zzb:Lcom/google/android/gms/internal/ads/zzglz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgfj;->zzb()Lcom/google/android/gms/internal/ads/zzglz;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lcom/google/android/gms/internal/ads/zzgfj;->zzb:Lcom/google/android/gms/internal/ads/zzglz;

    .line 6
    .line 7
    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzgei;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgls;->zzb()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgfj;->zzb:Lcom/google/android/gms/internal/ads/zzglz;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 11
    .line 12
    const-string v1, "Cannot use non-FIPS-compliant AeadConfigurationV1 in FIPS mode"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw v0
.end method

.method private static zzb()Lcom/google/android/gms/internal/ads/zzglz;
    .locals 4

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zzgee;

    .line 2
    .line 3
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgog;->zza()Lcom/google/android/gms/internal/ads/zzgod;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgfq;->zzd(Lcom/google/android/gms/internal/ads/zzgod;)V

    .line 8
    .line 9
    .line 10
    new-instance v2, Lcom/google/android/gms/internal/ads/zzgfc;

    .line 11
    .line 12
    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzgfc;-><init>()V

    .line 13
    .line 14
    .line 15
    const-class v3, Lcom/google/android/gms/internal/ads/zzgft;

    .line 16
    .line 17
    invoke-static {v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzgob;->zzb(Lcom/google/android/gms/internal/ads/zzgnz;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgob;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzgod;->zza(Lcom/google/android/gms/internal/ads/zzgob;)Lcom/google/android/gms/internal/ads/zzgod;

    .line 22
    .line 23
    .line 24
    new-instance v2, Lcom/google/android/gms/internal/ads/zzgfd;

    .line 25
    .line 26
    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzgfd;-><init>()V

    .line 27
    .line 28
    .line 29
    const-class v3, Lcom/google/android/gms/internal/ads/zzggp;

    .line 30
    .line 31
    invoke-static {v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzgob;->zzb(Lcom/google/android/gms/internal/ads/zzgnz;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgob;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzgod;->zza(Lcom/google/android/gms/internal/ads/zzgob;)Lcom/google/android/gms/internal/ads/zzgod;

    .line 36
    .line 37
    .line 38
    new-instance v2, Lcom/google/android/gms/internal/ads/zzgfe;

    .line 39
    .line 40
    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzgfe;-><init>()V

    .line 41
    .line 42
    .line 43
    const-class v3, Lcom/google/android/gms/internal/ads/zzgha;

    .line 44
    .line 45
    invoke-static {v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzgob;->zzb(Lcom/google/android/gms/internal/ads/zzgnz;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgob;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzgod;->zza(Lcom/google/android/gms/internal/ads/zzgob;)Lcom/google/android/gms/internal/ads/zzgod;

    .line 50
    .line 51
    .line 52
    new-instance v2, Lcom/google/android/gms/internal/ads/zzgff;

    .line 53
    .line 54
    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzgff;-><init>()V

    .line 55
    .line 56
    .line 57
    const-class v3, Lcom/google/android/gms/internal/ads/zzggf;

    .line 58
    .line 59
    invoke-static {v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzgob;->zzb(Lcom/google/android/gms/internal/ads/zzgnz;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgob;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzgod;->zza(Lcom/google/android/gms/internal/ads/zzgob;)Lcom/google/android/gms/internal/ads/zzgod;

    .line 64
    .line 65
    .line 66
    new-instance v2, Lcom/google/android/gms/internal/ads/zzgfg;

    .line 67
    .line 68
    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzgfg;-><init>()V

    .line 69
    .line 70
    .line 71
    const-class v3, Lcom/google/android/gms/internal/ads/zzghj;

    .line 72
    .line 73
    invoke-static {v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzgob;->zzb(Lcom/google/android/gms/internal/ads/zzgnz;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgob;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzgod;->zza(Lcom/google/android/gms/internal/ads/zzgob;)Lcom/google/android/gms/internal/ads/zzgod;

    .line 78
    .line 79
    .line 80
    new-instance v2, Lcom/google/android/gms/internal/ads/zzgfh;

    .line 81
    .line 82
    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzgfh;-><init>()V

    .line 83
    .line 84
    .line 85
    const-class v3, Lcom/google/android/gms/internal/ads/zzgjf;

    .line 86
    .line 87
    invoke-static {v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzgob;->zzb(Lcom/google/android/gms/internal/ads/zzgnz;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgob;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzgod;->zza(Lcom/google/android/gms/internal/ads/zzgob;)Lcom/google/android/gms/internal/ads/zzgod;

    .line 92
    .line 93
    .line 94
    new-instance v2, Lcom/google/android/gms/internal/ads/zzgfi;

    .line 95
    .line 96
    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzgfi;-><init>()V

    .line 97
    .line 98
    .line 99
    const-class v3, Lcom/google/android/gms/internal/ads/zzgiz;

    .line 100
    .line 101
    invoke-static {v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzgob;->zzb(Lcom/google/android/gms/internal/ads/zzgnz;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgob;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzgod;->zza(Lcom/google/android/gms/internal/ads/zzgob;)Lcom/google/android/gms/internal/ads/zzgod;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgod;->zzc()Lcom/google/android/gms/internal/ads/zzgog;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzglz;->zzb(Lcom/google/android/gms/internal/ads/zzgog;)Lcom/google/android/gms/internal/ads/zzglz;

    .line 113
    .line 114
    .line 115
    move-result-object v0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    return-object v0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 119
    .line 120
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 121
    .line 122
    .line 123
    throw v1
.end method
