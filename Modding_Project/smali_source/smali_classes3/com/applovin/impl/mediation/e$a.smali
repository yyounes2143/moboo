.class Lcom/applovin/impl/mediation/e$a;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/applovin/impl/d5$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/mediation/e;->a(Ljava/lang/String;Lcom/applovin/mediation/MaxAdFormat;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/content/Context;Lcom/applovin/impl/mediation/ads/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/applovin/mediation/MaxAdFormat;

.field final synthetic e:Ljava/util/Map;

.field final synthetic f:Ljava/util/Map;

.field final synthetic g:Landroid/content/Context;

.field final synthetic h:Lcom/applovin/impl/mediation/ads/a$a;

.field final synthetic i:Lcom/applovin/impl/mediation/e;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/mediation/e;JLjava/util/Map;Ljava/lang/String;Lcom/applovin/mediation/MaxAdFormat;Ljava/util/Map;Ljava/util/Map;Landroid/content/Context;Lcom/applovin/impl/mediation/ads/a$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/applovin/impl/mediation/e$a;->i:Lcom/applovin/impl/mediation/e;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/applovin/impl/mediation/e$a;->a:J

    .line 4
    .line 5
    iput-object p4, p0, Lcom/applovin/impl/mediation/e$a;->b:Ljava/util/Map;

    .line 6
    .line 7
    iput-object p5, p0, Lcom/applovin/impl/mediation/e$a;->c:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p6, p0, Lcom/applovin/impl/mediation/e$a;->d:Lcom/applovin/mediation/MaxAdFormat;

    .line 10
    .line 11
    iput-object p7, p0, Lcom/applovin/impl/mediation/e$a;->e:Ljava/util/Map;

    .line 12
    .line 13
    iput-object p8, p0, Lcom/applovin/impl/mediation/e$a;->f:Ljava/util/Map;

    .line 14
    .line 15
    iput-object p9, p0, Lcom/applovin/impl/mediation/e$a;->g:Landroid/content/Context;

    .line 16
    .line 17
    iput-object p10, p0, Lcom/applovin/impl/mediation/e$a;->h:Lcom/applovin/impl/mediation/ads/a$a;

    .line 18
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONArray;)V
    .locals 13

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/applovin/impl/mediation/e$a;->a:J

    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    iget-object v2, p0, Lcom/applovin/impl/mediation/e$a;->b:Ljava/util/Map;

    .line 9
    .line 10
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "sct_ms"

    .line 15
    .line 16
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/applovin/impl/mediation/e$a;->b:Ljava/util/Map;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/applovin/impl/mediation/e$a;->i:Lcom/applovin/impl/mediation/e;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/applovin/impl/mediation/e$a;->c:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Lcom/applovin/impl/mediation/e;->b(Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const-string v2, "calfc"

    .line 34
    .line 35
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    new-instance v3, Lcom/applovin/impl/j5;

    .line 39
    .line 40
    iget-object v4, p0, Lcom/applovin/impl/mediation/e$a;->c:Ljava/lang/String;

    .line 41
    .line 42
    iget-object v5, p0, Lcom/applovin/impl/mediation/e$a;->d:Lcom/applovin/mediation/MaxAdFormat;

    .line 43
    .line 44
    iget-object v6, p0, Lcom/applovin/impl/mediation/e$a;->e:Ljava/util/Map;

    .line 45
    .line 46
    iget-object v7, p0, Lcom/applovin/impl/mediation/e$a;->f:Ljava/util/Map;

    .line 47
    .line 48
    iget-object v8, p0, Lcom/applovin/impl/mediation/e$a;->b:Ljava/util/Map;

    .line 49
    .line 50
    iget-object v10, p0, Lcom/applovin/impl/mediation/e$a;->g:Landroid/content/Context;

    .line 51
    .line 52
    iget-object v0, p0, Lcom/applovin/impl/mediation/e$a;->i:Lcom/applovin/impl/mediation/e;

    .line 53
    .line 54
    invoke-static {v0}, Lcom/applovin/impl/mediation/e;->c(Lcom/applovin/impl/mediation/e;)Lcom/applovin/impl/sdk/k;

    .line 55
    .line 56
    .line 57
    move-result-object v11

    .line 58
    iget-object v12, p0, Lcom/applovin/impl/mediation/e$a;->h:Lcom/applovin/impl/mediation/ads/a$a;

    .line 59
    .line 60
    move-object v9, p1

    .line 61
    invoke-direct/range {v3 .. v12}, Lcom/applovin/impl/j5;-><init>(Ljava/lang/String;Lcom/applovin/mediation/MaxAdFormat;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lorg/json/JSONArray;Landroid/content/Context;Lcom/applovin/impl/sdk/k;Lcom/applovin/impl/mediation/ads/a$a;)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lcom/applovin/impl/mediation/e$a;->i:Lcom/applovin/impl/mediation/e;

    .line 65
    .line 66
    invoke-static {p1}, Lcom/applovin/impl/mediation/e;->c(Lcom/applovin/impl/mediation/e;)Lcom/applovin/impl/sdk/k;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    sget-object v0, Lcom/applovin/impl/g3;->K7:Lcom/applovin/impl/l4;

    .line 71
    .line 72
    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/l4;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    check-cast p1, Ljava/lang/Boolean;

    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-eqz p1, :cond_0

    .line 83
    .line 84
    iget-object p1, p0, Lcom/applovin/impl/mediation/e$a;->i:Lcom/applovin/impl/mediation/e;

    .line 85
    .line 86
    invoke-static {p1}, Lcom/applovin/impl/mediation/e;->c(Lcom/applovin/impl/mediation/e;)Lcom/applovin/impl/sdk/k;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->q0()Lcom/applovin/impl/r5;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    sget-object v0, Lcom/applovin/impl/r5$b;->c:Lcom/applovin/impl/r5$b;

    .line 95
    .line 96
    invoke-virtual {p1, v3, v0}, Lcom/applovin/impl/r5;->a(Lcom/applovin/impl/w4;Lcom/applovin/impl/r5$b;)V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :cond_0
    iget-object p1, p0, Lcom/applovin/impl/mediation/e$a;->i:Lcom/applovin/impl/mediation/e;

    .line 101
    .line 102
    invoke-static {p1}, Lcom/applovin/impl/mediation/e;->c(Lcom/applovin/impl/mediation/e;)Lcom/applovin/impl/sdk/k;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->q0()Lcom/applovin/impl/r5;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-virtual {p1, v3}, Lcom/applovin/impl/r5;->a(Lcom/applovin/impl/w4;)V

    .line 111
    .line 112
    .line 113
    return-void
.end method
