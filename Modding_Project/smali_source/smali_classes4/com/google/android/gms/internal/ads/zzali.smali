.class final Lcom/google/android/gms/internal/ads/zzali;
.super Ljava/lang/Object;
.source "Proguard"


# instance fields
.field public final zza:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final zzb:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final zzc:Z

.field public final zzd:J

.field public final zze:J

.field public final zzf:Lcom/google/android/gms/internal/ads/zzalo;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final zzg:Ljava/lang/String;

.field public final zzh:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final zzi:Lcom/google/android/gms/internal/ads/zzali;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzj:[Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzk:Ljava/util/HashMap;

.field private final zzl:Ljava/util/HashMap;

.field private zzm:Ljava/util/List;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;JJLcom/google/android/gms/internal/ads/zzalo;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzali;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/google/android/gms/internal/ads/zzalo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p11    # Lcom/google/android/gms/internal/ads/zzali;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzali;->zza:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzali;->zzb:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzali;->zzh:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzali;->zzf:Lcom/google/android/gms/internal/ads/zzalo;

    .line 11
    .line 12
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzali;->zzj:[Ljava/lang/String;

    .line 13
    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    :goto_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzali;->zzc:Z

    .line 20
    .line 21
    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzali;->zzd:J

    .line 22
    .line 23
    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zzali;->zze:J

    .line 24
    .line 25
    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzali;->zzg:Ljava/lang/String;

    .line 29
    .line 30
    iput-object p11, p0, Lcom/google/android/gms/internal/ads/zzali;->zzi:Lcom/google/android/gms/internal/ads/zzali;

    .line 31
    .line 32
    new-instance p1, Ljava/util/HashMap;

    .line 33
    .line 34
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzali;->zzk:Ljava/util/HashMap;

    .line 38
    .line 39
    new-instance p1, Ljava/util/HashMap;

    .line 40
    .line 41
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzali;->zzl:Ljava/util/HashMap;

    .line 45
    .line 46
    return-void
.end method

.method public static zzb(Ljava/lang/String;JJLcom/google/android/gms/internal/ads/zzalo;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzali;)Lcom/google/android/gms/internal/ads/zzali;
    .locals 12
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/google/android/gms/internal/ads/zzalo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Lcom/google/android/gms/internal/ads/zzali;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzali;

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    move-object v1, p0

    .line 5
    move-wide v3, p1

    .line 6
    move-wide v5, p3

    .line 7
    move-object/from16 v7, p5

    .line 8
    .line 9
    move-object/from16 v8, p6

    .line 10
    .line 11
    move-object/from16 v9, p7

    .line 12
    .line 13
    move-object/from16 v10, p8

    .line 14
    .line 15
    move-object/from16 v11, p9

    .line 16
    .line 17
    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/internal/ads/zzali;-><init>(Ljava/lang/String;Ljava/lang/String;JJLcom/google/android/gms/internal/ads/zzalo;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzali;)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method

.method public static zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzali;
    .locals 12

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzali;

    .line 2
    .line 3
    const-string v1, "\r\n"

    .line 4
    .line 5
    const-string v2, "\n"

    .line 6
    .line 7
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const-string v1, " *\n *"

    .line 12
    .line 13
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const-string v1, " "

    .line 18
    .line 19
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const-string v2, "[ \t\\x0B\u000c\r]+"

    .line 24
    .line 25
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const/4 v10, 0x0

    .line 30
    const/4 v11, 0x0

    .line 31
    const/4 v1, 0x0

    .line 32
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    const/4 v7, 0x0

    .line 38
    const/4 v8, 0x0

    .line 39
    const-string v9, ""

    .line 40
    .line 41
    move-wide v5, v3

    .line 42
    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/internal/ads/zzali;-><init>(Ljava/lang/String;Ljava/lang/String;JJLcom/google/android/gms/internal/ads/zzalo;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzali;)V

    .line 43
    .line 44
    .line 45
    return-object v0
.end method

.method private static zzi(Ljava/lang/String;Ljava/util/Map;)Landroid/text/SpannableStringBuilder;
    .locals 2

    .line 1
    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcs;

    .line 8
    .line 9
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcs;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v1, Landroid/text/SpannableStringBuilder;

    .line 13
    .line 14
    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcs;->zzl(Ljava/lang/CharSequence;)Lcom/google/android/gms/internal/ads/zzcs;

    .line 18
    .line 19
    .line 20
    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lcom/google/android/gms/internal/ads/zzcs;

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcs;->zzq()Ljava/lang/CharSequence;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    check-cast p0, Landroid/text/SpannableStringBuilder;

    .line 37
    .line 38
    return-object p0
.end method

.method private final zzj(Ljava/util/TreeSet;Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzali;->zza:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "p"

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const-string v2, "div"

    .line 10
    .line 11
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzali;->zzh:Ljava/lang/String;

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    :cond_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzali;->zzd:J

    .line 26
    .line 27
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    cmp-long v0, v2, v4

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {p1, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    :cond_1
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzali;->zze:J

    .line 44
    .line 45
    cmp-long v0, v2, v4

    .line 46
    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {p1, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzali;->zzm:Ljava/util/List;

    .line 57
    .line 58
    if-eqz v0, :cond_5

    .line 59
    .line 60
    const/4 v0, 0x0

    .line 61
    move v2, v0

    .line 62
    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzali;->zzm:Ljava/util/List;

    .line 63
    .line 64
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-ge v2, v3, :cond_5

    .line 69
    .line 70
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzali;->zzm:Ljava/util/List;

    .line 71
    .line 72
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    check-cast v3, Lcom/google/android/gms/internal/ads/zzali;

    .line 77
    .line 78
    const/4 v4, 0x1

    .line 79
    if-nez p2, :cond_4

    .line 80
    .line 81
    if-eqz v1, :cond_3

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_3
    move v4, v0

    .line 85
    :cond_4
    :goto_1
    invoke-direct {v3, p1, v4}, Lcom/google/android/gms/internal/ads/zzali;->zzj(Ljava/util/TreeSet;Z)V

    .line 86
    .line 87
    .line 88
    add-int/lit8 v2, v2, 0x1

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_5
    return-void
.end method

.method private final zzk(JLjava/lang/String;Ljava/util/List;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzali;->zzg:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eq v2, v1, :cond_0

    .line 11
    .line 12
    move-object p3, v0

    .line 13
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzali;->zzg(J)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzali;->zza:Ljava/lang/String;

    .line 21
    .line 22
    const-string v2, "div"

    .line 23
    .line 24
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzali;->zzh:Ljava/lang/String;

    .line 31
    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    new-instance p1, Landroid/util/Pair;

    .line 36
    .line 37
    invoke-direct {p1, p3, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzali;->zza()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-ge v1, v0, :cond_3

    .line 49
    .line 50
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzali;->zzd(I)Lcom/google/android/gms/internal/ads/zzali;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzali;->zzk(JLjava/lang/String;Ljava/util/List;)V

    .line 55
    .line 56
    .line 57
    add-int/lit8 v1, v1, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    return-void
.end method

.method private final zzl(JLjava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v4, p3

    const/4 v1, -0x1

    const/4 v8, 0x1

    .line 1
    invoke-virtual/range {p0 .. p2}, Lcom/google/android/gms/internal/ads/zzali;->zzg(J)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_10

    :cond_0
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzali;->zzg:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eq v8, v3, :cond_1

    move-object v6, v2

    goto :goto_0

    :cond_1
    move-object/from16 v6, p5

    :goto_0
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzali;->zzl:Ljava/util/HashMap;

    .line 2
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzali;->zzk:Ljava/util/HashMap;

    .line 4
    invoke-virtual {v9, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    .line 5
    :goto_2
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v9, v3, :cond_23

    move-object/from16 v10, p6

    .line 6
    invoke-interface {v10, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/ads/zzcs;

    .line 7
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v11, p4

    .line 8
    invoke-interface {v11, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/ads/zzalm;

    .line 9
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    iget v12, v12, Lcom/google/android/gms/internal/ads/zzalm;->zzj:I

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzali;->zzf:Lcom/google/android/gms/internal/ads/zzalo;

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzali;->zzj:[Ljava/lang/String;

    .line 11
    invoke-static {v13, v14, v4}, Lcom/google/android/gms/internal/ads/zzaln;->zza(Lcom/google/android/gms/internal/ads/zzalo;[Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/gms/internal/ads/zzalo;

    move-result-object v13

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzcs;->zzq()Ljava/lang/CharSequence;

    move-result-object v14

    .line 12
    check-cast v14, Landroid/text/SpannableStringBuilder;

    if-nez v14, :cond_3

    new-instance v14, Landroid/text/SpannableStringBuilder;

    .line 13
    invoke-direct {v14}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 14
    invoke-virtual {v7, v14}, Lcom/google/android/gms/internal/ads/zzcs;->zzl(Ljava/lang/CharSequence;)Lcom/google/android/gms/internal/ads/zzcs;

    :cond_3
    if-eqz v13, :cond_22

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzali;->zzi:Lcom/google/android/gms/internal/ads/zzali;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzalo;->zzh()I

    move-result v5

    const/16 v8, 0x21

    if-eq v5, v1, :cond_4

    new-instance v5, Landroid/text/style/StyleSpan;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzalo;->zzh()I

    move-result v1

    .line 15
    invoke-direct {v5, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 16
    invoke-interface {v14, v5, v9, v3, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_4
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzalo;->zzM()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 17
    new-instance v1, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v1}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-interface {v14, v1, v9, v3, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_5
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzalo;->zzN()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 18
    new-instance v1, Landroid/text/style/UnderlineSpan;

    invoke-direct {v1}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-interface {v14, v1, v9, v3, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_6
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzalo;->zzL()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 19
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    .line 20
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzalo;->zzd()I

    move-result v5

    invoke-direct {v1, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 21
    invoke-static {v14, v1, v9, v3, v8}, Lcom/google/android/gms/internal/ads/zzcz;->zzb(Landroid/text/Spannable;Ljava/lang/Object;III)V

    :cond_7
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzalo;->zzK()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 22
    new-instance v1, Landroid/text/style/BackgroundColorSpan;

    .line 23
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzalo;->zzc()I

    move-result v5

    invoke-direct {v1, v5}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 24
    invoke-static {v14, v1, v9, v3, v8}, Lcom/google/android/gms/internal/ads/zzcz;->zzb(Landroid/text/Spannable;Ljava/lang/Object;III)V

    :cond_8
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzalo;->zzG()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 25
    new-instance v1, Landroid/text/style/TypefaceSpan;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzalo;->zzG()Ljava/lang/String;

    move-result-object v5

    .line 26
    invoke-direct {v1, v5}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-static {v14, v1, v9, v3, v8}, Lcom/google/android/gms/internal/ads/zzcz;->zzb(Landroid/text/Spannable;Ljava/lang/Object;III)V

    :cond_9
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzalo;->zzk()Lcom/google/android/gms/internal/ads/zzalh;

    move-result-object v1

    const/4 v5, 0x2

    if-eqz v1, :cond_e

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzalo;->zzk()Lcom/google/android/gms/internal/ads/zzalh;

    move-result-object v1

    .line 28
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    iget v8, v1, Lcom/google/android/gms/internal/ads/zzalh;->zza:I

    move-object/from16 v18, v2

    const/4 v2, -0x1

    if-ne v8, v2, :cond_c

    if-eq v12, v5, :cond_a

    const/4 v2, 0x1

    if-ne v12, v2, :cond_b

    :cond_a
    const/4 v2, 0x3

    goto :goto_3

    :cond_b
    const/4 v2, 0x1

    :goto_3
    move v8, v2

    const/4 v2, 0x1

    goto :goto_4

    .line 30
    :cond_c
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzalh;->zzb:I

    .line 31
    :goto_4
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzalh;->zzc:I

    const/4 v12, -0x2

    if-ne v1, v12, :cond_d

    const/4 v1, 0x1

    .line 32
    :cond_d
    new-instance v12, Lcom/google/android/gms/internal/ads/zzda;

    invoke-direct {v12, v8, v2, v1}, Lcom/google/android/gms/internal/ads/zzda;-><init>(III)V

    const/16 v1, 0x21

    invoke-static {v14, v12, v9, v3, v1}, Lcom/google/android/gms/internal/ads/zzcz;->zzb(Landroid/text/Spannable;Ljava/lang/Object;III)V

    goto :goto_5

    :cond_e
    move-object/from16 v18, v2

    :goto_5
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzalo;->zzg()I

    move-result v1

    if-eq v1, v5, :cond_11

    const/4 v2, 0x3

    if-eq v1, v2, :cond_10

    const/4 v2, 0x4

    if-eq v1, v2, :cond_10

    :cond_f
    :goto_6
    const/4 v8, -0x1

    goto/16 :goto_c

    .line 33
    :cond_10
    new-instance v1, Lcom/google/android/gms/internal/ads/zzalg;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzalg;-><init>()V

    const/16 v2, 0x21

    .line 34
    invoke-interface {v14, v1, v9, v3, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_6

    :cond_11
    :goto_7
    if-eqz v15, :cond_13

    .line 35
    iget-object v2, v15, Lcom/google/android/gms/internal/ads/zzali;->zzf:Lcom/google/android/gms/internal/ads/zzalo;

    iget-object v8, v15, Lcom/google/android/gms/internal/ads/zzali;->zzj:[Ljava/lang/String;

    .line 36
    invoke-static {v2, v8, v4}, Lcom/google/android/gms/internal/ads/zzaln;->zza(Lcom/google/android/gms/internal/ads/zzalo;[Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/gms/internal/ads/zzalo;

    move-result-object v2

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzalo;->zzg()I

    move-result v2

    const/4 v8, 0x1

    if-eq v2, v8, :cond_14

    :cond_12
    iget-object v15, v15, Lcom/google/android/gms/internal/ads/zzali;->zzi:Lcom/google/android/gms/internal/ads/zzali;

    goto :goto_7

    :cond_13
    const/4 v15, 0x0

    :cond_14
    if-eqz v15, :cond_f

    new-instance v2, Ljava/util/ArrayDeque;

    .line 37
    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    .line 38
    invoke-interface {v2, v15}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 39
    :cond_15
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_17

    .line 40
    invoke-interface {v2}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/ads/zzali;

    .line 41
    iget-object v12, v8, Lcom/google/android/gms/internal/ads/zzali;->zzf:Lcom/google/android/gms/internal/ads/zzalo;

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzali;->zzj:[Ljava/lang/String;

    invoke-static {v12, v1, v4}, Lcom/google/android/gms/internal/ads/zzaln;->zza(Lcom/google/android/gms/internal/ads/zzalo;[Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/gms/internal/ads/zzalo;

    move-result-object v1

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzalo;->zzg()I

    move-result v1

    const/4 v12, 0x3

    if-ne v1, v12, :cond_16

    move-object v1, v8

    goto :goto_9

    .line 42
    :cond_16
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzali;->zza()I

    move-result v1

    const/16 v17, -0x1

    add-int/lit8 v1, v1, -0x1

    :goto_8
    if-ltz v1, :cond_15

    .line 43
    invoke-virtual {v8, v1}, Lcom/google/android/gms/internal/ads/zzali;->zzd(I)Lcom/google/android/gms/internal/ads/zzali;

    move-result-object v12

    invoke-interface {v2, v12}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, -0x1

    const/16 v17, -0x1

    goto :goto_8

    :cond_17
    const/4 v1, 0x0

    :goto_9
    if-eqz v1, :cond_f

    .line 44
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzali;->zza()I

    move-result v2

    const/4 v8, 0x1

    if-ne v2, v8, :cond_1a

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzali;->zzd(I)Lcom/google/android/gms/internal/ads/zzali;

    move-result-object v8

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzali;->zzb:Ljava/lang/String;

    if-eqz v8, :cond_1a

    .line 45
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzali;->zzd(I)Lcom/google/android/gms/internal/ads/zzali;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzali;->zzb:Ljava/lang/String;

    sget-object v8, Lcom/google/android/gms/internal/ads/zzeu;->zza:Ljava/lang/String;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzali;->zzf:Lcom/google/android/gms/internal/ads/zzalo;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzali;->zzj:[Ljava/lang/String;

    .line 46
    invoke-static {v8, v1, v4}, Lcom/google/android/gms/internal/ads/zzaln;->zza(Lcom/google/android/gms/internal/ads/zzalo;[Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/gms/internal/ads/zzalo;

    move-result-object v1

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzalo;->zzf()I

    move-result v1

    :goto_a
    const/4 v8, -0x1

    goto :goto_b

    :cond_18
    const/4 v1, -0x1

    goto :goto_a

    :goto_b
    if-ne v1, v8, :cond_19

    iget-object v12, v15, Lcom/google/android/gms/internal/ads/zzali;->zzf:Lcom/google/android/gms/internal/ads/zzalo;

    iget-object v15, v15, Lcom/google/android/gms/internal/ads/zzali;->zzj:[Ljava/lang/String;

    .line 47
    invoke-static {v12, v15, v4}, Lcom/google/android/gms/internal/ads/zzaln;->zza(Lcom/google/android/gms/internal/ads/zzalo;[Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/gms/internal/ads/zzalo;

    move-result-object v12

    if-eqz v12, :cond_19

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzalo;->zzf()I

    move-result v1

    .line 48
    :cond_19
    new-instance v12, Lcom/google/android/gms/internal/ads/zzcy;

    invoke-direct {v12, v2, v1}, Lcom/google/android/gms/internal/ads/zzcy;-><init>(Ljava/lang/String;I)V

    const/16 v1, 0x21

    invoke-interface {v14, v12, v9, v3, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_c

    :cond_1a
    const/4 v8, -0x1

    const-string v1, "TtmlRenderUtil"

    const-string v2, "Skipping rubyText node without exactly one text child."

    .line 49
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzdx;->zze(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :goto_c
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzalo;->zzJ()Z

    move-result v1

    if-eqz v1, :cond_1b

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcx;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzcx;-><init>()V

    const/16 v2, 0x21

    .line 51
    invoke-static {v14, v1, v9, v3, v2}, Lcom/google/android/gms/internal/ads/zzcz;->zzb(Landroid/text/Spannable;Ljava/lang/Object;III)V

    :cond_1b
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzalo;->zze()I

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    const/4 v12, 0x1

    if-eq v1, v12, :cond_1e

    if-eq v1, v5, :cond_1d

    const/4 v12, 0x3

    if-eq v1, v12, :cond_1c

    goto :goto_d

    .line 52
    :cond_1c
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzalo;->zza()F

    move-result v1

    div-float/2addr v1, v2

    const/16 v5, 0x21

    .line 53
    invoke-static {v14, v1, v9, v3, v5}, Lcom/google/android/gms/internal/ads/zzcz;->zza(Landroid/text/Spannable;FIII)V

    goto :goto_d

    :cond_1d
    const/16 v5, 0x21

    .line 54
    new-instance v1, Landroid/text/style/RelativeSizeSpan;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzalo;->zza()F

    move-result v12

    .line 55
    invoke-direct {v1, v12}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 56
    invoke-static {v14, v1, v9, v3, v5}, Lcom/google/android/gms/internal/ads/zzcz;->zzb(Landroid/text/Spannable;Ljava/lang/Object;III)V

    goto :goto_d

    :cond_1e
    const/16 v5, 0x21

    .line 57
    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzalo;->zza()F

    move-result v12

    float-to-int v12, v12

    const/4 v15, 0x1

    .line 58
    invoke-direct {v1, v12, v15}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 59
    invoke-static {v14, v1, v9, v3, v5}, Lcom/google/android/gms/internal/ads/zzcz;->zzb(Landroid/text/Spannable;Ljava/lang/Object;III)V

    .line 60
    :goto_d
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzali;->zza:Ljava/lang/String;

    const-string v3, "p"

    .line 61
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzalo;->zzb()F

    move-result v1

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_1f

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzalo;->zzb()F

    move-result v1

    const/high16 v3, -0x3d4c0000    # -90.0f

    mul-float/2addr v1, v3

    div-float/2addr v1, v2

    .line 62
    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/ads/zzcs;->zzj(F)Lcom/google/android/gms/internal/ads/zzcs;

    :cond_1f
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzalo;->zzj()Landroid/text/Layout$Alignment;

    move-result-object v1

    if-eqz v1, :cond_20

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzalo;->zzj()Landroid/text/Layout$Alignment;

    move-result-object v1

    .line 63
    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/ads/zzcs;->zzm(Landroid/text/Layout$Alignment;)Lcom/google/android/gms/internal/ads/zzcs;

    :cond_20
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzalo;->zzi()Landroid/text/Layout$Alignment;

    move-result-object v1

    if-eqz v1, :cond_21

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzalo;->zzi()Landroid/text/Layout$Alignment;

    move-result-object v1

    .line 64
    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/ads/zzcs;->zzg(Landroid/text/Layout$Alignment;)Lcom/google/android/gms/internal/ads/zzcs;

    :cond_21
    move v1, v8

    move-object/from16 v2, v18

    :cond_22
    :goto_e
    const/4 v8, 0x1

    goto/16 :goto_1

    :cond_23
    move-object/from16 v11, p4

    move-object/from16 v10, p6

    goto :goto_e

    :cond_24
    const/4 v2, 0x0

    move v8, v2

    :goto_f
    move-object/from16 v11, p4

    move-object/from16 v10, p6

    .line 65
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzali;->zza()I

    move-result v1

    if-ge v8, v1, :cond_25

    .line 66
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzali;->zzd(I)Lcom/google/android/gms/internal/ads/zzali;

    move-result-object v1

    move-wide/from16 v2, p1

    move-object v7, v10

    move-object v5, v11

    .line 67
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzali;->zzl(JLjava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    const/16 v16, 0x1

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v4, p3

    goto :goto_f

    :cond_25
    :goto_10
    return-void
.end method

.method private final zzm(JZLjava/lang/String;Ljava/util/Map;)V
    .locals 12

    .line 1
    move-object/from16 v5, p5

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzali;->zzk:Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 6
    .line 7
    .line 8
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzali;->zzl:Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzali;->zza:Ljava/lang/String;

    .line 14
    .line 15
    const-string v2, "metadata"

    .line 16
    .line 17
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    goto/16 :goto_7

    .line 24
    .line 25
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzali;->zzg:Ljava/lang/String;

    .line 26
    .line 27
    const-string v3, ""

    .line 28
    .line 29
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    const/4 v7, 0x1

    .line 34
    if-eq v7, v3, :cond_1

    .line 35
    .line 36
    move-object v4, v2

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move-object/from16 v4, p4

    .line 39
    .line 40
    :goto_0
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzali;->zzc:Z

    .line 41
    .line 42
    if-eqz v2, :cond_2

    .line 43
    .line 44
    if-eqz p3, :cond_2

    .line 45
    .line 46
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzali;->zzi(Ljava/lang/String;Ljava/util/Map;)Landroid/text/SpannableStringBuilder;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzali;->zzb:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_2
    const-string v2, "br"

    .line 60
    .line 61
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    const/16 v8, 0xa

    .line 66
    .line 67
    if-eqz v2, :cond_4

    .line 68
    .line 69
    if-nez p3, :cond_3

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_3
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzali;->zzi(Ljava/lang/String;Ljava/util/Map;)Landroid/text/SpannableStringBuilder;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p1, v8}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :cond_4
    :goto_1
    invoke-virtual/range {p0 .. p2}, Lcom/google/android/gms/internal/ads/zzali;->zzg(J)Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-eqz v2, :cond_b

    .line 85
    .line 86
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    if-eqz v3, :cond_5

    .line 99
    .line 100
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    check-cast v3, Ljava/util/Map$Entry;

    .line 105
    .line 106
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v9

    .line 110
    check-cast v9, Ljava/lang/String;

    .line 111
    .line 112
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    check-cast v3, Lcom/google/android/gms/internal/ads/zzcs;

    .line 117
    .line 118
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzcs;->zzq()Ljava/lang/CharSequence;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    .line 124
    .line 125
    check-cast v3, Ljava/lang/CharSequence;

    .line 126
    .line 127
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    invoke-virtual {v0, v9, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_5
    const-string v0, "p"

    .line 140
    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v9

    .line 145
    const/4 v10, 0x0

    .line 146
    move v11, v10

    .line 147
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzali;->zza()I

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    if-ge v11, v0, :cond_8

    .line 152
    .line 153
    invoke-virtual {p0, v11}, Lcom/google/android/gms/internal/ads/zzali;->zzd(I)Lcom/google/android/gms/internal/ads/zzali;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    if-nez p3, :cond_6

    .line 158
    .line 159
    if-eqz v9, :cond_7

    .line 160
    .line 161
    :cond_6
    move-wide v1, p1

    .line 162
    move v3, v7

    .line 163
    goto :goto_4

    .line 164
    :cond_7
    move-wide v1, p1

    .line 165
    move v3, v10

    .line 166
    :goto_4
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzali;->zzm(JZLjava/lang/String;Ljava/util/Map;)V

    .line 167
    .line 168
    .line 169
    add-int/lit8 v11, v11, 0x1

    .line 170
    .line 171
    goto :goto_3

    .line 172
    :cond_8
    if-eqz v9, :cond_a

    .line 173
    .line 174
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzali;->zzi(Ljava/lang/String;Ljava/util/Map;)Landroid/text/SpannableStringBuilder;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    .line 179
    .line 180
    .line 181
    move-result p2

    .line 182
    :goto_5
    add-int/lit8 p2, p2, -0x1

    .line 183
    .line 184
    if-ltz p2, :cond_9

    .line 185
    .line 186
    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    .line 187
    .line 188
    .line 189
    move-result p3

    .line 190
    const/16 v0, 0x20

    .line 191
    .line 192
    if-ne p3, v0, :cond_9

    .line 193
    .line 194
    goto :goto_5

    .line 195
    :cond_9
    if-ltz p2, :cond_a

    .line 196
    .line 197
    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    .line 198
    .line 199
    .line 200
    move-result p2

    .line 201
    if-eq p2, v8, :cond_a

    .line 202
    .line 203
    invoke-virtual {p1, v8}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 204
    .line 205
    .line 206
    :cond_a
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 215
    .line 216
    .line 217
    move-result p2

    .line 218
    if-eqz p2, :cond_b

    .line 219
    .line 220
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object p2

    .line 224
    check-cast p2, Ljava/util/Map$Entry;

    .line 225
    .line 226
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object p3

    .line 230
    check-cast p3, Ljava/lang/String;

    .line 231
    .line 232
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object p2

    .line 236
    check-cast p2, Lcom/google/android/gms/internal/ads/zzcs;

    .line 237
    .line 238
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzcs;->zzq()Ljava/lang/CharSequence;

    .line 239
    .line 240
    .line 241
    move-result-object p2

    .line 242
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 243
    .line 244
    .line 245
    check-cast p2, Ljava/lang/CharSequence;

    .line 246
    .line 247
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 248
    .line 249
    .line 250
    move-result p2

    .line 251
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 252
    .line 253
    .line 254
    move-result-object p2

    .line 255
    invoke-virtual {v6, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    goto :goto_6

    .line 259
    :cond_b
    :goto_7
    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzali;->zzm:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public final zzd(I)Lcom/google/android/gms/internal/ads/zzali;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzali;->zzm:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/google/android/gms/internal/ads/zzali;

    .line 10
    .line 11
    return-object p1

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 13
    .line 14
    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 15
    .line 16
    .line 17
    throw p1
.end method

.method public final zze(JLjava/util/Map;Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzali;->zzg:Ljava/lang/String;

    .line 7
    .line 8
    invoke-direct {p0, p1, p2, v5, v0}, Lcom/google/android/gms/internal/ads/zzali;->zzk(JLjava/lang/String;Ljava/util/List;)V

    .line 9
    .line 10
    .line 11
    new-instance v6, Ljava/util/TreeMap;

    .line 12
    .line 13
    invoke-direct {v6}, Ljava/util/TreeMap;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    move-object v1, p0

    .line 18
    move-wide v2, p1

    .line 19
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzali;->zzm(JZLjava/lang/String;Ljava/util/Map;)V

    .line 20
    .line 21
    .line 22
    move-object v4, p3

    .line 23
    move-object v7, v6

    .line 24
    move-object v6, v5

    .line 25
    move-object v5, p4

    .line 26
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzali;->zzl(JLjava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    .line 27
    .line 28
    .line 29
    move-object v6, v7

    .line 30
    new-instance p1, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    const/4 p3, 0x0

    .line 40
    move p4, p3

    .line 41
    :goto_0
    if-ge p4, p2, :cond_1

    .line 42
    .line 43
    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Landroid/util/Pair;

    .line 48
    .line 49
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 50
    .line 51
    invoke-interface {p5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Ljava/lang/String;

    .line 56
    .line 57
    if-nez v2, :cond_0

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_0
    invoke-static {v2, p3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    array-length v3, v2

    .line 65
    invoke-static {v2, p3, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 70
    .line 71
    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    check-cast v1, Lcom/google/android/gms/internal/ads/zzalm;

    .line 76
    .line 77
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    new-instance v3, Lcom/google/android/gms/internal/ads/zzcs;

    .line 81
    .line 82
    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzcs;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzcs;->zzc(Landroid/graphics/Bitmap;)Lcom/google/android/gms/internal/ads/zzcs;

    .line 86
    .line 87
    .line 88
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzalm;->zzb:F

    .line 89
    .line 90
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzcs;->zzh(F)Lcom/google/android/gms/internal/ads/zzcs;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3, p3}, Lcom/google/android/gms/internal/ads/zzcs;->zzi(I)Lcom/google/android/gms/internal/ads/zzcs;

    .line 94
    .line 95
    .line 96
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzalm;->zzc:F

    .line 97
    .line 98
    invoke-virtual {v3, v2, p3}, Lcom/google/android/gms/internal/ads/zzcs;->zze(FI)Lcom/google/android/gms/internal/ads/zzcs;

    .line 99
    .line 100
    .line 101
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzalm;->zze:I

    .line 102
    .line 103
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzcs;->zzf(I)Lcom/google/android/gms/internal/ads/zzcs;

    .line 104
    .line 105
    .line 106
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzalm;->zzf:F

    .line 107
    .line 108
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzcs;->zzk(F)Lcom/google/android/gms/internal/ads/zzcs;

    .line 109
    .line 110
    .line 111
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzalm;->zzg:F

    .line 112
    .line 113
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzcs;->zzd(F)Lcom/google/android/gms/internal/ads/zzcs;

    .line 114
    .line 115
    .line 116
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzalm;->zzj:I

    .line 117
    .line 118
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzcs;->zzo(I)Lcom/google/android/gms/internal/ads/zzcs;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzcs;->zzp()Lcom/google/android/gms/internal/ads/zzcu;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    :goto_1
    add-int/lit8 p4, p4, 0x1

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_1
    invoke-virtual {v6}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    .line 132
    .line 133
    .line 134
    move-result-object p2

    .line 135
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 136
    .line 137
    .line 138
    move-result-object p2

    .line 139
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 140
    .line 141
    .line 142
    move-result p4

    .line 143
    if-eqz p4, :cond_d

    .line 144
    .line 145
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object p4

    .line 149
    check-cast p4, Ljava/util/Map$Entry;

    .line 150
    .line 151
    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object p5

    .line 155
    invoke-interface {v5, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object p5

    .line 159
    check-cast p5, Lcom/google/android/gms/internal/ads/zzalm;

    .line 160
    .line 161
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    .line 163
    .line 164
    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object p4

    .line 168
    check-cast p4, Lcom/google/android/gms/internal/ads/zzcs;

    .line 169
    .line 170
    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzcs;->zzq()Ljava/lang/CharSequence;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 175
    .line 176
    .line 177
    check-cast v0, Landroid/text/SpannableStringBuilder;

    .line 178
    .line 179
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    const-class v2, Lcom/google/android/gms/internal/ads/zzalg;

    .line 184
    .line 185
    invoke-virtual {v0, p3, v1, v2}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    check-cast v1, [Lcom/google/android/gms/internal/ads/zzalg;

    .line 190
    .line 191
    array-length v2, v1

    .line 192
    move v3, p3

    .line 193
    :goto_3
    if-ge v3, v2, :cond_2

    .line 194
    .line 195
    aget-object v4, v1, v3

    .line 196
    .line 197
    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    .line 198
    .line 199
    .line 200
    move-result v6

    .line 201
    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    .line 202
    .line 203
    .line 204
    move-result v4

    .line 205
    const-string v7, ""

    .line 206
    .line 207
    invoke-virtual {v0, v6, v4, v7}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 208
    .line 209
    .line 210
    add-int/lit8 v3, v3, 0x1

    .line 211
    .line 212
    goto :goto_3

    .line 213
    :cond_2
    move v1, p3

    .line 214
    :goto_4
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 215
    .line 216
    .line 217
    move-result v2

    .line 218
    const/16 v3, 0x20

    .line 219
    .line 220
    if-ge v1, v2, :cond_5

    .line 221
    .line 222
    add-int/lit8 v2, v1, 0x1

    .line 223
    .line 224
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    .line 225
    .line 226
    .line 227
    move-result v4

    .line 228
    if-ne v4, v3, :cond_4

    .line 229
    .line 230
    move v4, v2

    .line 231
    :goto_5
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 232
    .line 233
    .line 234
    move-result v6

    .line 235
    if-ge v4, v6, :cond_3

    .line 236
    .line 237
    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    .line 238
    .line 239
    .line 240
    move-result v6

    .line 241
    if-ne v6, v3, :cond_3

    .line 242
    .line 243
    add-int/lit8 v4, v4, 0x1

    .line 244
    .line 245
    goto :goto_5

    .line 246
    :cond_3
    sub-int/2addr v4, v2

    .line 247
    if-lez v4, :cond_4

    .line 248
    .line 249
    add-int/2addr v4, v1

    .line 250
    invoke-virtual {v0, v1, v4}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 251
    .line 252
    .line 253
    :cond_4
    move v1, v2

    .line 254
    goto :goto_4

    .line 255
    :cond_5
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 256
    .line 257
    .line 258
    move-result v1

    .line 259
    if-lez v1, :cond_6

    .line 260
    .line 261
    invoke-virtual {v0, p3}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    .line 262
    .line 263
    .line 264
    move-result v1

    .line 265
    if-ne v1, v3, :cond_6

    .line 266
    .line 267
    const/4 v1, 0x1

    .line 268
    invoke-virtual {v0, p3, v1}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 269
    .line 270
    .line 271
    :cond_6
    move v1, p3

    .line 272
    :goto_6
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 273
    .line 274
    .line 275
    move-result v2

    .line 276
    add-int/lit8 v2, v2, -0x1

    .line 277
    .line 278
    const/16 v4, 0xa

    .line 279
    .line 280
    if-ge v1, v2, :cond_8

    .line 281
    .line 282
    add-int/lit8 v2, v1, 0x1

    .line 283
    .line 284
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    .line 285
    .line 286
    .line 287
    move-result v6

    .line 288
    if-ne v6, v4, :cond_7

    .line 289
    .line 290
    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    .line 291
    .line 292
    .line 293
    move-result v4

    .line 294
    if-ne v4, v3, :cond_7

    .line 295
    .line 296
    add-int/lit8 v1, v1, 0x2

    .line 297
    .line 298
    invoke-virtual {v0, v2, v1}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 299
    .line 300
    .line 301
    :cond_7
    move v1, v2

    .line 302
    goto :goto_6

    .line 303
    :cond_8
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 304
    .line 305
    .line 306
    move-result v1

    .line 307
    if-lez v1, :cond_9

    .line 308
    .line 309
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 310
    .line 311
    .line 312
    move-result v1

    .line 313
    add-int/lit8 v1, v1, -0x1

    .line 314
    .line 315
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    .line 316
    .line 317
    .line 318
    move-result v1

    .line 319
    if-ne v1, v3, :cond_9

    .line 320
    .line 321
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 322
    .line 323
    .line 324
    move-result v1

    .line 325
    add-int/lit8 v1, v1, -0x1

    .line 326
    .line 327
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 328
    .line 329
    .line 330
    move-result v2

    .line 331
    invoke-virtual {v0, v1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 332
    .line 333
    .line 334
    :cond_9
    move v1, p3

    .line 335
    :goto_7
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 336
    .line 337
    .line 338
    move-result v2

    .line 339
    add-int/lit8 v2, v2, -0x1

    .line 340
    .line 341
    if-ge v1, v2, :cond_b

    .line 342
    .line 343
    add-int/lit8 v2, v1, 0x1

    .line 344
    .line 345
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    .line 346
    .line 347
    .line 348
    move-result v6

    .line 349
    if-ne v6, v3, :cond_a

    .line 350
    .line 351
    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    .line 352
    .line 353
    .line 354
    move-result v6

    .line 355
    if-ne v6, v4, :cond_a

    .line 356
    .line 357
    invoke-virtual {v0, v1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 358
    .line 359
    .line 360
    :cond_a
    move v1, v2

    .line 361
    goto :goto_7

    .line 362
    :cond_b
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 363
    .line 364
    .line 365
    move-result v1

    .line 366
    if-lez v1, :cond_c

    .line 367
    .line 368
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 369
    .line 370
    .line 371
    move-result v1

    .line 372
    add-int/lit8 v1, v1, -0x1

    .line 373
    .line 374
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    .line 375
    .line 376
    .line 377
    move-result v1

    .line 378
    if-ne v1, v4, :cond_c

    .line 379
    .line 380
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 381
    .line 382
    .line 383
    move-result v1

    .line 384
    add-int/lit8 v1, v1, -0x1

    .line 385
    .line 386
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 387
    .line 388
    .line 389
    move-result v2

    .line 390
    invoke-virtual {v0, v1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 391
    .line 392
    .line 393
    :cond_c
    iget v0, p5, Lcom/google/android/gms/internal/ads/zzalm;->zzc:F

    .line 394
    .line 395
    iget v1, p5, Lcom/google/android/gms/internal/ads/zzalm;->zzd:I

    .line 396
    .line 397
    invoke-virtual {p4, v0, v1}, Lcom/google/android/gms/internal/ads/zzcs;->zze(FI)Lcom/google/android/gms/internal/ads/zzcs;

    .line 398
    .line 399
    .line 400
    iget v0, p5, Lcom/google/android/gms/internal/ads/zzalm;->zze:I

    .line 401
    .line 402
    invoke-virtual {p4, v0}, Lcom/google/android/gms/internal/ads/zzcs;->zzf(I)Lcom/google/android/gms/internal/ads/zzcs;

    .line 403
    .line 404
    .line 405
    iget v0, p5, Lcom/google/android/gms/internal/ads/zzalm;->zzb:F

    .line 406
    .line 407
    invoke-virtual {p4, v0}, Lcom/google/android/gms/internal/ads/zzcs;->zzh(F)Lcom/google/android/gms/internal/ads/zzcs;

    .line 408
    .line 409
    .line 410
    iget v0, p5, Lcom/google/android/gms/internal/ads/zzalm;->zzf:F

    .line 411
    .line 412
    invoke-virtual {p4, v0}, Lcom/google/android/gms/internal/ads/zzcs;->zzk(F)Lcom/google/android/gms/internal/ads/zzcs;

    .line 413
    .line 414
    .line 415
    iget v0, p5, Lcom/google/android/gms/internal/ads/zzalm;->zzi:F

    .line 416
    .line 417
    iget v1, p5, Lcom/google/android/gms/internal/ads/zzalm;->zzh:I

    .line 418
    .line 419
    invoke-virtual {p4, v0, v1}, Lcom/google/android/gms/internal/ads/zzcs;->zzn(FI)Lcom/google/android/gms/internal/ads/zzcs;

    .line 420
    .line 421
    .line 422
    iget p5, p5, Lcom/google/android/gms/internal/ads/zzalm;->zzj:I

    .line 423
    .line 424
    invoke-virtual {p4, p5}, Lcom/google/android/gms/internal/ads/zzcs;->zzo(I)Lcom/google/android/gms/internal/ads/zzcs;

    .line 425
    .line 426
    .line 427
    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzcs;->zzp()Lcom/google/android/gms/internal/ads/zzcu;

    .line 428
    .line 429
    .line 430
    move-result-object p4

    .line 431
    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    .line 433
    .line 434
    goto/16 :goto_2

    .line 435
    .line 436
    :cond_d
    return-object p1
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzali;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzali;->zzm:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzali;->zzm:Ljava/util/List;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzali;->zzm:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final zzg(J)Z
    .locals 8

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzali;->zzd:J

    .line 2
    .line 3
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    cmp-long v4, v0, v2

    .line 9
    .line 10
    const/4 v5, 0x1

    .line 11
    if-nez v4, :cond_1

    .line 12
    .line 13
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzali;->zze:J

    .line 14
    .line 15
    cmp-long v0, v0, v2

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    move-wide v0, v2

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return v5

    .line 22
    :cond_1
    :goto_0
    cmp-long v4, v0, p1

    .line 23
    .line 24
    if-gtz v4, :cond_3

    .line 25
    .line 26
    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzali;->zze:J

    .line 27
    .line 28
    cmp-long v6, v6, v2

    .line 29
    .line 30
    if-eqz v6, :cond_2

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_2
    return v5

    .line 34
    :cond_3
    :goto_1
    cmp-long v0, v0, v2

    .line 35
    .line 36
    if-nez v0, :cond_5

    .line 37
    .line 38
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzali;->zze:J

    .line 39
    .line 40
    cmp-long v0, p1, v0

    .line 41
    .line 42
    if-ltz v0, :cond_4

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_4
    return v5

    .line 46
    :cond_5
    :goto_2
    const/4 v0, 0x0

    .line 47
    if-gtz v4, :cond_6

    .line 48
    .line 49
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzali;->zze:J

    .line 50
    .line 51
    cmp-long p1, p1, v1

    .line 52
    .line 53
    if-gez p1, :cond_6

    .line 54
    .line 55
    return v5

    .line 56
    :cond_6
    return v0
.end method

.method public final zzh()[J
    .locals 6

    .line 1
    new-instance v0, Ljava/util/TreeSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzali;->zzj(Ljava/util/TreeSet;Z)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    new-array v2, v2, [J

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Ljava/lang/Long;

    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 33
    .line 34
    .line 35
    move-result-wide v3

    .line 36
    add-int/lit8 v5, v1, 0x1

    .line 37
    .line 38
    aput-wide v3, v2, v1

    .line 39
    .line 40
    move v1, v5

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    return-object v2
.end method
