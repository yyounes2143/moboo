.class public abstract Lcom/facebook/ads/redexgen/X/gL;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:Z

.field public static final A01:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/debug/log/BLogLevelCallback;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile A02:Lcom/facebook/ads/redexgen/X/gE;

.field public static volatile A03:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 2776
    invoke-static {}, Lcom/facebook/ads/redexgen/X/1q;->A00()Lcom/facebook/ads/redexgen/X/1q;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/gL;->A02:Lcom/facebook/ads/redexgen/X/gE;

    .line 2777
    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/ads/redexgen/X/gL;->A03:Z

    .line 2778
    sput-boolean v0, Lcom/facebook/ads/redexgen/X/gL;->A00:Z

    .line 2779
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/gL;->A01:Ljava/util/List;

    .line 2780
    sget-object v1, Lcom/facebook/ads/redexgen/X/gL;->A02:Lcom/facebook/ads/redexgen/X/gE;

    const/4 v0, 0x5

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/gE;->AIo(I)V

    .line 2781
    sget-object v0, Lcom/facebook/ads/redexgen/X/gL;->A02:Lcom/facebook/ads/redexgen/X/gE;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gD;->A00(Lcom/facebook/ads/redexgen/X/gE;)V

    .line 2782
    return-void
.end method

.method public static A00(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 83166
    sget-object v1, Lcom/facebook/ads/redexgen/X/gL;->A02:Lcom/facebook/ads/redexgen/X/gE;

    const/4 v0, 0x4

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/gE;->AAP(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83167
    sget-object v0, Lcom/facebook/ads/redexgen/X/gL;->A02:Lcom/facebook/ads/redexgen/X/gE;

    invoke-interface {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/gE;->A9l(Ljava/lang/String;Ljava/lang/String;)V

    .line 83168
    :cond_0
    return-void
.end method

.method public static A01(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 83169
    sget-object v1, Lcom/facebook/ads/redexgen/X/gL;->A02:Lcom/facebook/ads/redexgen/X/gE;

    const/4 v0, 0x4

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/gE;->AAP(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83170
    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/gG;->A0J(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/gL;->A00(Ljava/lang/String;Ljava/lang/String;)V

    .line 83171
    :cond_0
    return-void
.end method

.method public static A02(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 83172
    sget-object v1, Lcom/facebook/ads/redexgen/X/gL;->A02:Lcom/facebook/ads/redexgen/X/gE;

    const/4 v0, 0x4

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/gE;->AAP(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83173
    sget-object v0, Lcom/facebook/ads/redexgen/X/gL;->A02:Lcom/facebook/ads/redexgen/X/gE;

    invoke-interface {v0, p0, p1, p2}, Lcom/facebook/ads/redexgen/X/gE;->A9m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83174
    :cond_0
    return-void
.end method
