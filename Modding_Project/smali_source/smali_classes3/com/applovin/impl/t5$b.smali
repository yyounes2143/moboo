.class Lcom/applovin/impl/t5$b;
.super Lcom/applovin/impl/w4;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/t5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field private final g:J

.field private final h:I

.field private final i:Lcom/applovin/impl/q2;

.field private final j:Ljava/util/List;

.field final synthetic k:Lcom/applovin/impl/t5;


# direct methods
.method private constructor <init>(Lcom/applovin/impl/t5;ILjava/util/List;)V
    .locals 2

    .line 2
    iput-object p1, p0, Lcom/applovin/impl/t5$b;->k:Lcom/applovin/impl/t5;

    .line 3
    invoke-static {p1}, Lcom/applovin/impl/t5;->a(Lcom/applovin/impl/t5;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/applovin/impl/t5;->b(Lcom/applovin/impl/t5;)Lcom/applovin/impl/sdk/k;

    move-result-object v1

    invoke-static {p1}, Lcom/applovin/impl/t5;->d(Lcom/applovin/impl/t5;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/applovin/impl/w4;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/k;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/applovin/impl/t5$b;->g:J

    .line 5
    iput p2, p0, Lcom/applovin/impl/t5$b;->h:I

    .line 6
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/impl/q2;

    iput-object p1, p0, Lcom/applovin/impl/t5$b;->i:Lcom/applovin/impl/q2;

    .line 7
    iput-object p3, p0, Lcom/applovin/impl/t5$b;->j:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/applovin/impl/t5;ILjava/util/List;Lcom/applovin/impl/t5$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/impl/t5$b;-><init>(Lcom/applovin/impl/t5;ILjava/util/List;)V

    return-void
.end method

.method public static synthetic a(Lcom/applovin/impl/t5$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/w4;->b:Ljava/lang/String;

    return-object p0
.end method

.method private a(Lcom/applovin/impl/q2;Lcom/applovin/mediation/MaxNetworkResponseInfo$AdLoadState;JLcom/applovin/mediation/MaxError;)V
    .locals 9

    .line 4
    invoke-virtual {p1}, Lcom/applovin/impl/q2;->T()Z

    move-result v4

    .line 5
    invoke-virtual {p1}, Lcom/applovin/impl/a3;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/l3;->a(Ljava/lang/String;)Lcom/applovin/mediation/MaxMediatedNetworkInfo;

    move-result-object v2

    .line 6
    new-instance v0, Lcom/applovin/impl/mediation/MaxNetworkResponseInfoImpl;

    invoke-virtual {p1}, Lcom/applovin/impl/q2;->F()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {p1}, Lcom/applovin/impl/q2;->C()Ljava/lang/String;

    move-result-object v7

    move-object v1, p2

    move-wide v5, p3

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/applovin/impl/mediation/MaxNetworkResponseInfoImpl;-><init>(Lcom/applovin/mediation/MaxNetworkResponseInfo$AdLoadState;Lcom/applovin/mediation/MaxMediatedNetworkInfo;Landroid/os/Bundle;ZJLjava/lang/String;Lcom/applovin/mediation/MaxError;)V

    .line 7
    iget-object p1, p0, Lcom/applovin/impl/t5$b;->k:Lcom/applovin/impl/t5;

    invoke-static {p1}, Lcom/applovin/impl/t5;->c(Lcom/applovin/impl/t5;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic a(Lcom/applovin/impl/t5$b;Lcom/applovin/impl/q2;Lcom/applovin/mediation/MaxNetworkResponseInfo$AdLoadState;JLcom/applovin/mediation/MaxError;)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p5}, Lcom/applovin/impl/t5$b;->a(Lcom/applovin/impl/q2;Lcom/applovin/mediation/MaxNetworkResponseInfo$AdLoadState;JLcom/applovin/mediation/MaxError;)V

    return-void
.end method

.method public static synthetic a(Lcom/applovin/impl/t5$b;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/applovin/impl/t5$b;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/applovin/impl/t5$b;)Lcom/applovin/impl/sdk/o;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/applovin/impl/w4;->c:Lcom/applovin/impl/sdk/o;

    return-object p0
.end method

.method private b(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic c(Lcom/applovin/impl/t5$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/applovin/impl/t5$b;->h:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic d(Lcom/applovin/impl/t5$b;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/t5$b;->j:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic e(Lcom/applovin/impl/t5$b;)Lcom/applovin/impl/sdk/o;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/w4;->c:Lcom/applovin/impl/sdk/o;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic f(Lcom/applovin/impl/t5$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/w4;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic g(Lcom/applovin/impl/t5$b;)Lcom/applovin/impl/sdk/o;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/w4;->c:Lcom/applovin/impl/sdk/o;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic h(Lcom/applovin/impl/t5$b;)Lcom/applovin/impl/q2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/t5$b;->i:Lcom/applovin/impl/q2;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic i(Lcom/applovin/impl/t5$b;)Lcom/applovin/impl/sdk/k;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/w4;->a:Lcom/applovin/impl/sdk/k;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic j(Lcom/applovin/impl/t5$b;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/applovin/impl/t5$b;->g:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static synthetic k(Lcom/applovin/impl/t5$b;)Lcom/applovin/impl/sdk/o;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/w4;->c:Lcom/applovin/impl/sdk/o;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/applovin/impl/w4;->c:Lcom/applovin/impl/sdk/o;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/applovin/impl/w4;->b:Ljava/lang/String;

    .line 10
    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v3, "Loading ad "

    .line 17
    .line 18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget v3, p0, Lcom/applovin/impl/t5$b;->h:I

    .line 22
    .line 23
    add-int/lit8 v3, v3, 0x1

    .line 24
    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v3, " of "

    .line 29
    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget-object v3, p0, Lcom/applovin/impl/t5$b;->j:Ljava/util/List;

    .line 34
    .line 35
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v3, " from "

    .line 43
    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget-object v3, p0, Lcom/applovin/impl/t5$b;->i:Lcom/applovin/impl/q2;

    .line 48
    .line 49
    invoke-virtual {v3}, Lcom/applovin/impl/a3;->c()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v3, " for "

    .line 57
    .line 58
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget-object v3, p0, Lcom/applovin/impl/t5$b;->k:Lcom/applovin/impl/t5;

    .line 62
    .line 63
    invoke-static {v3}, Lcom/applovin/impl/t5;->e(Lcom/applovin/impl/t5;)Lcom/applovin/mediation/MaxAdFormat;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v3}, Lcom/applovin/mediation/MaxAdFormat;->getLabel()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v3, " ad unit "

    .line 75
    .line 76
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    iget-object v3, p0, Lcom/applovin/impl/t5$b;->k:Lcom/applovin/impl/t5;

    .line 80
    .line 81
    invoke-static {v3}, Lcom/applovin/impl/t5;->d(Lcom/applovin/impl/t5;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    :cond_0
    const-string v0, "started to load ad"

    .line 96
    .line 97
    invoke-direct {p0, v0}, Lcom/applovin/impl/t5$b;->b(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Lcom/applovin/impl/t5$b;->k:Lcom/applovin/impl/t5;

    .line 101
    .line 102
    invoke-static {v0}, Lcom/applovin/impl/t5;->f(Lcom/applovin/impl/t5;)Ljava/lang/ref/WeakReference;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    check-cast v0, Landroid/content/Context;

    .line 111
    .line 112
    instance-of v1, v0, Landroid/app/Activity;

    .line 113
    .line 114
    if-eqz v1, :cond_1

    .line 115
    .line 116
    check-cast v0, Landroid/app/Activity;

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/w4;->a:Lcom/applovin/impl/sdk/k;

    .line 120
    .line 121
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->u0()Landroid/app/Activity;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    :goto_0
    iget-object v1, p0, Lcom/applovin/impl/w4;->a:Lcom/applovin/impl/sdk/k;

    .line 126
    .line 127
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/k;->a0()Lcom/applovin/impl/sdk/p;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    iget-object v2, p0, Lcom/applovin/impl/t5$b;->i:Lcom/applovin/impl/q2;

    .line 132
    .line 133
    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/p;->b(Lcom/applovin/impl/q2;)V

    .line 134
    .line 135
    .line 136
    iget-object v1, p0, Lcom/applovin/impl/w4;->a:Lcom/applovin/impl/sdk/k;

    .line 137
    .line 138
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/k;->X()Lcom/applovin/impl/mediation/MediationServiceImpl;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    iget-object v2, p0, Lcom/applovin/impl/t5$b;->k:Lcom/applovin/impl/t5;

    .line 143
    .line 144
    invoke-static {v2}, Lcom/applovin/impl/t5;->d(Lcom/applovin/impl/t5;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    iget-object v3, p0, Lcom/applovin/impl/t5$b;->i:Lcom/applovin/impl/q2;

    .line 149
    .line 150
    new-instance v4, Lcom/applovin/impl/t5$b$a;

    .line 151
    .line 152
    iget-object v5, p0, Lcom/applovin/impl/t5$b;->k:Lcom/applovin/impl/t5;

    .line 153
    .line 154
    invoke-static {v5}, Lcom/applovin/impl/t5;->g(Lcom/applovin/impl/t5;)Lcom/applovin/impl/mediation/ads/a$a;

    .line 155
    .line 156
    .line 157
    move-result-object v5

    .line 158
    invoke-direct {v4, p0, v5}, Lcom/applovin/impl/t5$b$a;-><init>(Lcom/applovin/impl/t5$b;Lcom/applovin/impl/mediation/ads/a$a;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/applovin/impl/mediation/MediationServiceImpl;->loadThirdPartyMediatedAd(Ljava/lang/String;Lcom/applovin/impl/q2;Landroid/app/Activity;Lcom/applovin/impl/mediation/ads/a$a;)V

    .line 162
    .line 163
    .line 164
    return-void
.end method
