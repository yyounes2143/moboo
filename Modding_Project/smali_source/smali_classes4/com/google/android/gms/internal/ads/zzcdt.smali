.class final Lcom/google/android/gms/internal/ads/zzcdt;
.super Lcom/google/android/gms/internal/ads/zzfz;
.source "Proguard"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhb;


# static fields
.field private static final zza:Ljava/util/regex/Pattern;

.field private static final zzb:Ljava/util/concurrent/atomic/AtomicReference;


# instance fields
.field private final zzc:Ljavax/net/ssl/SSLSocketFactory;

.field private final zzd:I

.field private final zze:I

.field private final zzf:Ljava/lang/String;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzha;

.field private zzh:Lcom/google/android/gms/internal/ads/zzgl;

.field private zzi:Ljava/net/HttpURLConnection;

.field private zzj:Ljava/io/InputStream;

.field private zzk:Z

.field private zzl:I

.field private zzm:J

.field private zzn:J

.field private zzo:J

.field private zzp:J

.field private zzq:I

.field private final zzr:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "^bytes (\\d+)-(\\d+)/(\\d+)$"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/google/android/gms/internal/ads/zzcdt;->zza:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/google/android/gms/internal/ads/zzcdt;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzhg;III)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzfz;-><init>(Z)V

    .line 3
    .line 4
    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcds;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcds;-><init>(Lcom/google/android/gms/internal/ads/zzcdt;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdt;->zzc:Ljavax/net/ssl/SSLSocketFactory;

    .line 11
    .line 12
    new-instance v0, Ljava/util/HashSet;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdt;->zzr:Ljava/util/Set;

    .line 18
    .line 19
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdc;->zzc(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdt;->zzf:Ljava/lang/String;

    .line 23
    .line 24
    new-instance p1, Lcom/google/android/gms/internal/ads/zzha;

    .line 25
    .line 26
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzha;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdt;->zzg:Lcom/google/android/gms/internal/ads/zzha;

    .line 30
    .line 31
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzcdt;->zzd:I

    .line 32
    .line 33
    iput p4, p0, Lcom/google/android/gms/internal/ads/zzcdt;->zze:I

    .line 34
    .line 35
    iput p5, p0, Lcom/google/android/gms/internal/ads/zzcdt;->zzq:I

    .line 36
    .line 37
    if-eqz p2, :cond_0

    .line 38
    .line 39
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzfz;->zzf(Lcom/google/android/gms/internal/ads/zzhg;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method

.method public static bridge synthetic zzk(Lcom/google/android/gms/internal/ads/zzcdt;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/gms/internal/ads/zzcdt;->zzq:I

    .line 2
    .line 3
    return p0
.end method

.method public static bridge synthetic zzl(Lcom/google/android/gms/internal/ads/zzcdt;Ljava/net/Socket;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcdt;->zzr:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final zzn()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdt;->zzi:Ljava/net/HttpURLConnection;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception v0

    .line 10
    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 11
    .line 12
    const-string v1, "Unexpected error while disconnecting"

    .line 13
    .line 14
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    .line 16
    .line 17
    :goto_0
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdt;->zzi:Ljava/net/HttpURLConnection;

    .line 19
    .line 20
    :cond_0
    return-void
.end method


# virtual methods
.method public final zza([BII)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgx;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcdt;->zzo:J

    .line 2
    .line 3
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzcdt;->zzm:J

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, -0x1

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcdt;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    check-cast v3, [B

    .line 20
    .line 21
    if-nez v3, :cond_1

    .line 22
    .line 23
    const/16 v3, 0x1000

    .line 24
    .line 25
    new-array v3, v3, [B

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception p1

    .line 29
    goto :goto_2

    .line 30
    :cond_1
    :goto_0
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzcdt;->zzo:J

    .line 31
    .line 32
    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzcdt;->zzm:J

    .line 33
    .line 34
    cmp-long v8, v4, v6

    .line 35
    .line 36
    if-eqz v8, :cond_4

    .line 37
    .line 38
    array-length v8, v3

    .line 39
    sub-long/2addr v6, v4

    .line 40
    int-to-long v4, v8

    .line 41
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 42
    .line 43
    .line 44
    move-result-wide v4

    .line 45
    long-to-int v4, v4

    .line 46
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzcdt;->zzj:Ljava/io/InputStream;

    .line 47
    .line 48
    invoke-virtual {v5, v3, v1, v4}, Ljava/io/InputStream;->read([BII)I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    if-nez v5, :cond_3

    .line 57
    .line 58
    if-eq v4, v2, :cond_2

    .line 59
    .line 60
    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzcdt;->zzo:J

    .line 61
    .line 62
    int-to-long v7, v4

    .line 63
    add-long/2addr v5, v7

    .line 64
    iput-wide v5, p0, Lcom/google/android/gms/internal/ads/zzcdt;->zzo:J

    .line 65
    .line 66
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/zzfz;->zzg(I)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    new-instance p1, Ljava/io/EOFException;

    .line 71
    .line 72
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 73
    .line 74
    .line 75
    throw p1

    .line 76
    :cond_3
    new-instance p1, Ljava/io/InterruptedIOException;

    .line 77
    .line 78
    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    .line 79
    .line 80
    .line 81
    throw p1

    .line 82
    :cond_4
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    :goto_1
    if-nez p3, :cond_5

    .line 86
    .line 87
    return v1

    .line 88
    :cond_5
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcdt;->zzn:J

    .line 89
    .line 90
    const-wide/16 v3, -0x1

    .line 91
    .line 92
    cmp-long v5, v0, v3

    .line 93
    .line 94
    if-eqz v5, :cond_7

    .line 95
    .line 96
    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzcdt;->zzp:J

    .line 97
    .line 98
    sub-long/2addr v0, v5

    .line 99
    const-wide/16 v5, 0x0

    .line 100
    .line 101
    cmp-long v5, v0, v5

    .line 102
    .line 103
    if-nez v5, :cond_6

    .line 104
    .line 105
    return v2

    .line 106
    :cond_6
    int-to-long v5, p3

    .line 107
    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 108
    .line 109
    .line 110
    move-result-wide v0

    .line 111
    long-to-int p3, v0

    .line 112
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdt;->zzj:Ljava/io/InputStream;

    .line 113
    .line 114
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    if-ne p1, v2, :cond_9

    .line 119
    .line 120
    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzcdt;->zzn:J

    .line 121
    .line 122
    cmp-long p1, p1, v3

    .line 123
    .line 124
    if-nez p1, :cond_8

    .line 125
    .line 126
    return v2

    .line 127
    :cond_8
    new-instance p1, Ljava/io/EOFException;

    .line 128
    .line 129
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 130
    .line 131
    .line 132
    throw p1

    .line 133
    :cond_9
    iget-wide p2, p0, Lcom/google/android/gms/internal/ads/zzcdt;->zzp:J

    .line 134
    .line 135
    int-to-long v0, p1

    .line 136
    add-long/2addr p2, v0

    .line 137
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzcdt;->zzp:J

    .line 138
    .line 139
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfz;->zzg(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    .line 141
    .line 142
    return p1

    .line 143
    :goto_2
    new-instance p2, Lcom/google/android/gms/internal/ads/zzgx;

    .line 144
    .line 145
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzcdt;->zzh:Lcom/google/android/gms/internal/ads/zzgl;

    .line 146
    .line 147
    const/16 v0, 0x7d0

    .line 148
    .line 149
    const/4 v1, 0x2

    .line 150
    invoke-direct {p2, p1, p3, v0, v1}, Lcom/google/android/gms/internal/ads/zzgx;-><init>(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzgl;II)V

    .line 151
    .line 152
    .line 153
    throw p2
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzgl;)J
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgx;
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v5, p1

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const-string v3, "Unable to connect to "

    .line 7
    .line 8
    iput-object v5, v1, Lcom/google/android/gms/internal/ads/zzcdt;->zzh:Lcom/google/android/gms/internal/ads/zzgl;

    .line 9
    .line 10
    const-wide/16 v6, 0x0

    .line 11
    .line 12
    iput-wide v6, v1, Lcom/google/android/gms/internal/ads/zzcdt;->zzp:J

    .line 13
    .line 14
    iput-wide v6, v1, Lcom/google/android/gms/internal/ads/zzcdt;->zzo:J

    .line 15
    .line 16
    :try_start_0
    new-instance v0, Ljava/net/URL;

    .line 17
    .line 18
    iget-object v4, v5, Lcom/google/android/gms/internal/ads/zzgl;->zza:Landroid/net/Uri;

    .line 19
    .line 20
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    invoke-direct {v0, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-wide v8, v5, Lcom/google/android/gms/internal/ads/zzgl;->zze:J

    .line 28
    .line 29
    iget-wide v10, v5, Lcom/google/android/gms/internal/ads/zzgl;->zzf:J

    .line 30
    .line 31
    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/zzgl;->zzb(I)Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    const/4 v12, 0x0

    .line 36
    move v13, v12

    .line 37
    :goto_0
    add-int/lit8 v14, v13, 0x1

    .line 38
    .line 39
    const/16 v15, 0x14

    .line 40
    .line 41
    if-gt v13, v15, :cond_16

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 44
    .line 45
    .line 46
    move-result-object v13

    .line 47
    check-cast v13, Ljava/net/HttpURLConnection;

    .line 48
    .line 49
    instance-of v15, v13, Ljavax/net/ssl/HttpsURLConnection;

    .line 50
    .line 51
    if-eqz v15, :cond_0

    .line 52
    .line 53
    move-object v15, v13

    .line 54
    check-cast v15, Ljavax/net/ssl/HttpsURLConnection;

    .line 55
    .line 56
    move-wide/from16 v16, v6

    .line 57
    .line 58
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzcdt;->zzc:Ljavax/net/ssl/SSLSocketFactory;

    .line 59
    .line 60
    invoke-virtual {v15, v6}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :catch_0
    move-exception v0

    .line 65
    move-object v4, v0

    .line 66
    goto/16 :goto_a

    .line 67
    .line 68
    :cond_0
    move-wide/from16 v16, v6

    .line 69
    .line 70
    :goto_1
    iget v6, v1, Lcom/google/android/gms/internal/ads/zzcdt;->zzd:I

    .line 71
    .line 72
    invoke-virtual {v13, v6}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 73
    .line 74
    .line 75
    iget v6, v1, Lcom/google/android/gms/internal/ads/zzcdt;->zze:I

    .line 76
    .line 77
    invoke-virtual {v13, v6}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 78
    .line 79
    .line 80
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzcdt;->zzg:Lcom/google/android/gms/internal/ads/zzha;

    .line 81
    .line 82
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzha;->zza()Ljava/util/Map;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    .line 96
    .line 97
    move-result v7

    .line 98
    if-eqz v7, :cond_1

    .line 99
    .line 100
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v7

    .line 104
    check-cast v7, Ljava/util/Map$Entry;

    .line 105
    .line 106
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v15

    .line 110
    check-cast v15, Ljava/lang/String;

    .line 111
    .line 112
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v7

    .line 116
    check-cast v7, Ljava/lang/String;

    .line 117
    .line 118
    invoke-virtual {v13, v15, v7}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_1
    cmp-long v6, v8, v16

    .line 123
    .line 124
    const-wide/16 v18, -0x1

    .line 125
    .line 126
    if-nez v6, :cond_2

    .line 127
    .line 128
    cmp-long v6, v10, v18

    .line 129
    .line 130
    if-eqz v6, :cond_4

    .line 131
    .line 132
    move-wide/from16 v6, v16

    .line 133
    .line 134
    goto :goto_3

    .line 135
    :cond_2
    move-wide v6, v8

    .line 136
    :goto_3
    new-instance v15, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .line 140
    .line 141
    const-string v2, "bytes="

    .line 142
    .line 143
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v15, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    const-string v2, "-"

    .line 150
    .line 151
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    cmp-long v15, v10, v18

    .line 159
    .line 160
    if-eqz v15, :cond_3

    .line 161
    .line 162
    add-long/2addr v6, v10

    .line 163
    add-long v6, v6, v18

    .line 164
    .line 165
    new-instance v15, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v15, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    :cond_3
    const-string v6, "Range"

    .line 181
    .line 182
    invoke-virtual {v13, v6, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    :cond_4
    const-string v2, "User-Agent"

    .line 186
    .line 187
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzcdt;->zzf:Ljava/lang/String;

    .line 188
    .line 189
    invoke-virtual {v13, v2, v6}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    if-nez v4, :cond_5

    .line 193
    .line 194
    const-string v2, "Accept-Encoding"

    .line 195
    .line 196
    const-string v6, "identity"

    .line 197
    .line 198
    invoke-virtual {v13, v2, v6}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    :cond_5
    invoke-virtual {v13, v12}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v13, v12}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v13}, Ljava/net/URLConnection;->connect()V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 211
    .line 212
    .line 213
    move-result v2

    .line 214
    const/16 v6, 0x12c

    .line 215
    .line 216
    if-eq v2, v6, :cond_6

    .line 217
    .line 218
    const/16 v6, 0x12d

    .line 219
    .line 220
    if-eq v2, v6, :cond_6

    .line 221
    .line 222
    const/16 v6, 0x12e

    .line 223
    .line 224
    if-eq v2, v6, :cond_6

    .line 225
    .line 226
    const/16 v6, 0x12f

    .line 227
    .line 228
    if-eq v2, v6, :cond_6

    .line 229
    .line 230
    const/16 v6, 0x133

    .line 231
    .line 232
    if-eq v2, v6, :cond_6

    .line 233
    .line 234
    const/16 v6, 0x134

    .line 235
    .line 236
    if-ne v2, v6, :cond_7

    .line 237
    .line 238
    :cond_6
    const/4 v6, 0x1

    .line 239
    goto/16 :goto_8

    .line 240
    .line 241
    :cond_7
    iput-object v13, v1, Lcom/google/android/gms/internal/ads/zzcdt;->zzi:Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    .line 243
    :try_start_1
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 244
    .line 245
    .line 246
    move-result v0

    .line 247
    iput v0, v1, Lcom/google/android/gms/internal/ads/zzcdt;->zzl:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 248
    .line 249
    const/16 v2, 0xc8

    .line 250
    .line 251
    if-lt v0, v2, :cond_11

    .line 252
    .line 253
    const/16 v3, 0x12b

    .line 254
    .line 255
    if-le v0, v3, :cond_8

    .line 256
    .line 257
    goto/16 :goto_7

    .line 258
    .line 259
    :cond_8
    if-ne v0, v2, :cond_9

    .line 260
    .line 261
    iget-wide v2, v5, Lcom/google/android/gms/internal/ads/zzgl;->zze:J

    .line 262
    .line 263
    cmp-long v0, v2, v16

    .line 264
    .line 265
    if-nez v0, :cond_a

    .line 266
    .line 267
    :cond_9
    move-wide/from16 v2, v16

    .line 268
    .line 269
    :cond_a
    iput-wide v2, v1, Lcom/google/android/gms/internal/ads/zzcdt;->zzm:J

    .line 270
    .line 271
    const/4 v2, 0x1

    .line 272
    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/zzgl;->zzb(I)Z

    .line 273
    .line 274
    .line 275
    move-result v0

    .line 276
    if-nez v0, :cond_10

    .line 277
    .line 278
    iget-wide v2, v5, Lcom/google/android/gms/internal/ads/zzgl;->zzf:J

    .line 279
    .line 280
    cmp-long v0, v2, v18

    .line 281
    .line 282
    if-eqz v0, :cond_b

    .line 283
    .line 284
    iput-wide v2, v1, Lcom/google/android/gms/internal/ads/zzcdt;->zzn:J

    .line 285
    .line 286
    goto/16 :goto_6

    .line 287
    .line 288
    :cond_b
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzcdt;->zzi:Ljava/net/HttpURLConnection;

    .line 289
    .line 290
    const-string v2, "Content-Length"

    .line 291
    .line 292
    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v2

    .line 296
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 297
    .line 298
    .line 299
    move-result v3

    .line 300
    const-string v4, "]"

    .line 301
    .line 302
    if-nez v3, :cond_c

    .line 303
    .line 304
    :try_start_2
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 305
    .line 306
    .line 307
    move-result-wide v6
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    .line 308
    goto :goto_4

    .line 309
    :catch_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 310
    .line 311
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 312
    .line 313
    .line 314
    const-string v6, "Unexpected Content-Length ["

    .line 315
    .line 316
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v3

    .line 329
    sget v6, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 330
    .line 331
    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    :cond_c
    move-wide/from16 v6, v18

    .line 335
    .line 336
    :goto_4
    const-string v3, "Content-Range"

    .line 337
    .line 338
    invoke-virtual {v0, v3}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 343
    .line 344
    .line 345
    move-result v3

    .line 346
    if-nez v3, :cond_e

    .line 347
    .line 348
    sget-object v3, Lcom/google/android/gms/internal/ads/zzcdt;->zza:Ljava/util/regex/Pattern;

    .line 349
    .line 350
    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 351
    .line 352
    .line 353
    move-result-object v3

    .line 354
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    .line 355
    .line 356
    .line 357
    move-result v8

    .line 358
    if-eqz v8, :cond_e

    .line 359
    .line 360
    const/4 v8, 0x2

    .line 361
    :try_start_3
    invoke-virtual {v3, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v8

    .line 365
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 366
    .line 367
    .line 368
    move-result-wide v8

    .line 369
    const/4 v10, 0x1

    .line 370
    invoke-virtual {v3, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v3

    .line 374
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 375
    .line 376
    .line 377
    move-result-wide v10

    .line 378
    sub-long/2addr v8, v10

    .line 379
    cmp-long v3, v6, v16

    .line 380
    .line 381
    const-wide/16 v10, 0x1

    .line 382
    .line 383
    add-long/2addr v8, v10

    .line 384
    if-gez v3, :cond_d

    .line 385
    .line 386
    move-wide v6, v8

    .line 387
    goto :goto_5

    .line 388
    :cond_d
    cmp-long v3, v6, v8

    .line 389
    .line 390
    if-eqz v3, :cond_e

    .line 391
    .line 392
    new-instance v3, Ljava/lang/StringBuilder;

    .line 393
    .line 394
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 395
    .line 396
    .line 397
    const-string v10, "Inconsistent headers ["

    .line 398
    .line 399
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    const-string v2, "] ["

    .line 406
    .line 407
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    .line 409
    .line 410
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    .line 412
    .line 413
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v2

    .line 420
    sget v3, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 421
    .line 422
    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    .line 423
    .line 424
    .line 425
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    .line 426
    .line 427
    .line 428
    move-result-wide v6
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    .line 429
    goto :goto_5

    .line 430
    :catch_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 431
    .line 432
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 433
    .line 434
    .line 435
    const-string v3, "Unexpected Content-Range ["

    .line 436
    .line 437
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    .line 439
    .line 440
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    .line 445
    .line 446
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object v0

    .line 450
    sget v2, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 451
    .line 452
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;)V

    .line 453
    .line 454
    .line 455
    :cond_e
    :goto_5
    cmp-long v0, v6, v18

    .line 456
    .line 457
    if-eqz v0, :cond_f

    .line 458
    .line 459
    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/zzcdt;->zzm:J

    .line 460
    .line 461
    sub-long v18, v6, v2

    .line 462
    .line 463
    :cond_f
    move-wide/from16 v2, v18

    .line 464
    .line 465
    iput-wide v2, v1, Lcom/google/android/gms/internal/ads/zzcdt;->zzn:J

    .line 466
    .line 467
    goto :goto_6

    .line 468
    :cond_10
    iget-wide v2, v5, Lcom/google/android/gms/internal/ads/zzgl;->zzf:J

    .line 469
    .line 470
    iput-wide v2, v1, Lcom/google/android/gms/internal/ads/zzcdt;->zzn:J

    .line 471
    .line 472
    :goto_6
    :try_start_4
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzcdt;->zzi:Ljava/net/HttpURLConnection;

    .line 473
    .line 474
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 475
    .line 476
    .line 477
    move-result-object v0

    .line 478
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzcdt;->zzj:Ljava/io/InputStream;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 479
    .line 480
    const/4 v2, 0x1

    .line 481
    iput-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzcdt;->zzk:Z

    .line 482
    .line 483
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzfz;->zzj(Lcom/google/android/gms/internal/ads/zzgl;)V

    .line 484
    .line 485
    .line 486
    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/zzcdt;->zzn:J

    .line 487
    .line 488
    return-wide v2

    .line 489
    :catch_3
    move-exception v0

    .line 490
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzcdt;->zzn()V

    .line 491
    .line 492
    .line 493
    new-instance v2, Lcom/google/android/gms/internal/ads/zzgx;

    .line 494
    .line 495
    const/16 v3, 0x7d0

    .line 496
    .line 497
    const/4 v6, 0x1

    .line 498
    invoke-direct {v2, v0, v5, v3, v6}, Lcom/google/android/gms/internal/ads/zzgx;-><init>(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzgl;II)V

    .line 499
    .line 500
    .line 501
    throw v2

    .line 502
    :cond_11
    :goto_7
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzcdt;->zzi:Ljava/net/HttpURLConnection;

    .line 503
    .line 504
    invoke-virtual {v0}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    .line 505
    .line 506
    .line 507
    move-result-object v6

    .line 508
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzcdt;->zzn()V

    .line 509
    .line 510
    .line 511
    new-instance v2, Lcom/google/android/gms/internal/ads/zzgz;

    .line 512
    .line 513
    iget v3, v1, Lcom/google/android/gms/internal/ads/zzcdt;->zzl:I

    .line 514
    .line 515
    const/4 v5, 0x0

    .line 516
    sget-object v8, Lcom/google/android/gms/internal/ads/zzeu;->zzb:[B

    .line 517
    .line 518
    const/4 v4, 0x0

    .line 519
    move-object/from16 v7, p1

    .line 520
    .line 521
    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzgz;-><init>(ILjava/lang/String;Ljava/io/IOException;Ljava/util/Map;Lcom/google/android/gms/internal/ads/zzgl;[B)V

    .line 522
    .line 523
    .line 524
    iget v0, v1, Lcom/google/android/gms/internal/ads/zzcdt;->zzl:I

    .line 525
    .line 526
    const/16 v3, 0x1a0

    .line 527
    .line 528
    if-ne v0, v3, :cond_12

    .line 529
    .line 530
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgh;

    .line 531
    .line 532
    const/16 v3, 0x7d8

    .line 533
    .line 534
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/zzgh;-><init>(I)V

    .line 535
    .line 536
    .line 537
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 538
    .line 539
    .line 540
    :cond_12
    throw v2

    .line 541
    :catch_4
    move-exception v0

    .line 542
    move-object v4, v0

    .line 543
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzcdt;->zzn()V

    .line 544
    .line 545
    .line 546
    new-instance v2, Lcom/google/android/gms/internal/ads/zzgx;

    .line 547
    .line 548
    iget-object v0, v5, Lcom/google/android/gms/internal/ads/zzgl;->zza:Landroid/net/Uri;

    .line 549
    .line 550
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 551
    .line 552
    .line 553
    move-result-object v0

    .line 554
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 555
    .line 556
    .line 557
    move-result-object v0

    .line 558
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 559
    .line 560
    .line 561
    move-result-object v3

    .line 562
    const/16 v6, 0x7d0

    .line 563
    .line 564
    const/4 v7, 0x1

    .line 565
    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzgx;-><init>(Ljava/lang/String;Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzgl;II)V

    .line 566
    .line 567
    .line 568
    throw v2

    .line 569
    :goto_8
    :try_start_5
    const-string v2, "Location"

    .line 570
    .line 571
    invoke-virtual {v13, v2}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 572
    .line 573
    .line 574
    move-result-object v2

    .line 575
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 576
    .line 577
    .line 578
    if-eqz v2, :cond_15

    .line 579
    .line 580
    new-instance v7, Ljava/net/URL;

    .line 581
    .line 582
    invoke-direct {v7, v0, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 583
    .line 584
    .line 585
    invoke-virtual {v7}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    .line 586
    .line 587
    .line 588
    move-result-object v0

    .line 589
    const-string v2, "https"

    .line 590
    .line 591
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 592
    .line 593
    .line 594
    move-result v2

    .line 595
    if-nez v2, :cond_14

    .line 596
    .line 597
    const-string v2, "http"

    .line 598
    .line 599
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 600
    .line 601
    .line 602
    move-result v2

    .line 603
    if-eqz v2, :cond_13

    .line 604
    .line 605
    goto :goto_9

    .line 606
    :cond_13
    new-instance v2, Ljava/net/ProtocolException;

    .line 607
    .line 608
    const-string v4, "Unsupported protocol redirect: "

    .line 609
    .line 610
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 611
    .line 612
    .line 613
    move-result-object v0

    .line 614
    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 615
    .line 616
    .line 617
    move-result-object v0

    .line 618
    invoke-direct {v2, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 619
    .line 620
    .line 621
    throw v2

    .line 622
    :cond_14
    :goto_9
    move v2, v6

    .line 623
    move-object v0, v7

    .line 624
    move v13, v14

    .line 625
    move-wide/from16 v6, v16

    .line 626
    .line 627
    goto/16 :goto_0

    .line 628
    .line 629
    :cond_15
    new-instance v0, Ljava/net/ProtocolException;

    .line 630
    .line 631
    const-string v2, "Null location redirect"

    .line 632
    .line 633
    invoke-direct {v0, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 634
    .line 635
    .line 636
    throw v0

    .line 637
    :cond_16
    new-instance v0, Ljava/net/NoRouteToHostException;

    .line 638
    .line 639
    new-instance v2, Ljava/lang/StringBuilder;

    .line 640
    .line 641
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 642
    .line 643
    .line 644
    const-string v4, "Too many redirects: "

    .line 645
    .line 646
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    .line 648
    .line 649
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 650
    .line 651
    .line 652
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 653
    .line 654
    .line 655
    move-result-object v2

    .line 656
    invoke-direct {v0, v2}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    .line 657
    .line 658
    .line 659
    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 660
    :goto_a
    new-instance v2, Lcom/google/android/gms/internal/ads/zzgx;

    .line 661
    .line 662
    iget-object v0, v5, Lcom/google/android/gms/internal/ads/zzgl;->zza:Landroid/net/Uri;

    .line 663
    .line 664
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 665
    .line 666
    .line 667
    move-result-object v0

    .line 668
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 669
    .line 670
    .line 671
    move-result-object v0

    .line 672
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 673
    .line 674
    .line 675
    move-result-object v3

    .line 676
    const/16 v6, 0x7d0

    .line 677
    .line 678
    const/4 v7, 0x1

    .line 679
    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzgx;-><init>(Ljava/lang/String;Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzgl;II)V

    .line 680
    .line 681
    .line 682
    throw v2
.end method

.method public final zzc()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdt;->zzi:Ljava/net/HttpURLConnection;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public final zzd()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgx;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcdt;->zzj:Ljava/io/InputStream;

    .line 4
    .line 5
    if-eqz v2, :cond_0

    .line 6
    .line 7
    sget-object v3, Lcom/google/android/gms/internal/ads/zzeu;->zza:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception v2

    .line 14
    goto :goto_1

    .line 15
    :catch_0
    move-exception v2

    .line 16
    :try_start_2
    new-instance v3, Lcom/google/android/gms/internal/ads/zzgx;

    .line 17
    .line 18
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcdt;->zzh:Lcom/google/android/gms/internal/ads/zzgl;

    .line 19
    .line 20
    const/16 v5, 0x7d0

    .line 21
    .line 22
    const/4 v6, 0x3

    .line 23
    invoke-direct {v3, v2, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzgx;-><init>(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzgl;II)V

    .line 24
    .line 25
    .line 26
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 27
    :cond_0
    :goto_0
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcdt;->zzj:Ljava/io/InputStream;

    .line 28
    .line 29
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcdt;->zzn()V

    .line 30
    .line 31
    .line 32
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcdt;->zzk:Z

    .line 33
    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcdt;->zzk:Z

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfz;->zzh()V

    .line 39
    .line 40
    .line 41
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdt;->zzr:Ljava/util/Set;

    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :goto_1
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcdt;->zzj:Ljava/io/InputStream;

    .line 48
    .line 49
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcdt;->zzn()V

    .line 50
    .line 51
    .line 52
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcdt;->zzk:Z

    .line 53
    .line 54
    if-eqz v1, :cond_2

    .line 55
    .line 56
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcdt;->zzk:Z

    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfz;->zzh()V

    .line 59
    .line 60
    .line 61
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdt;->zzr:Ljava/util/Set;

    .line 62
    .line 63
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 64
    .line 65
    .line 66
    throw v2
.end method

.method public final zze()Ljava/util/Map;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdt;->zzi:Ljava/net/HttpURLConnection;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public final zzm(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcdt;->zzq:I

    .line 2
    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdt;->zzr:Ljava/util/Set;

    .line 4
    .line 5
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/net/Socket;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcdt;->zzq:I

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/net/Socket;->setReceiveBufferSize(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 35
    .line 36
    const-string v1, "Failed to update receive buffer size."

    .line 37
    .line 38
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzk(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    return-void
.end method
