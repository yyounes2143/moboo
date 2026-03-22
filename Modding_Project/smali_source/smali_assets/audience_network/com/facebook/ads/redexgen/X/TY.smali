.class public final Lcom/facebook/ads/redexgen/X/TY;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:Lcom/facebook/ads/redexgen/X/TY;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1834
    new-instance v0, Lcom/facebook/ads/redexgen/X/TY;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/TY;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/TY;->A00:Lcom/facebook/ads/redexgen/X/TY;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 66051
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()Lcom/facebook/ads/redexgen/X/TY;
    .locals 1

    .line 66052
    sget-object v0, Lcom/facebook/ads/redexgen/X/TY;->A00:Lcom/facebook/ads/redexgen/X/TY;

    return-object v0
.end method


# virtual methods
.method public final A01(Lcom/facebook/ads/redexgen/X/SQ;Z)Lcom/facebook/ads/redexgen/X/Wb;
    .locals 2

    .line 66053
    new-instance v1, Lcom/facebook/ads/redexgen/X/S5;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/S5;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Wb;

    invoke-direct {v0, p1, p2, v1}, Lcom/facebook/ads/redexgen/X/Wb;-><init>(Lcom/facebook/ads/redexgen/X/SQ;ZLcom/facebook/ads/redexgen/X/S5;)V

    return-object v0
.end method

.method public final A02(Lcom/facebook/ads/redexgen/X/SQ;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/SQ;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 66054
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/TY;->A01(Lcom/facebook/ads/redexgen/X/SQ;Z)Lcom/facebook/ads/redexgen/X/Wb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wb;->A06()Ljava/util/Map;

    move-result-object v0

    return-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66055
    :catchall_0
    move-exception v1

    .line 66056
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/SQ;->A08()Lcom/facebook/ads/redexgen/X/Su;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/Su;->A4A(Ljava/lang/Throwable;)V

    .line 66057
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/TQ;->A01(Lcom/facebook/ads/redexgen/X/SQ;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
