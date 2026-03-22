.class public final Lcom/facebook/ads/redexgen/X/O6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final serialVersionUID:J = -0x2c891ddc6efb75c6L


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/O6;

.field public final A01:I

.field public final A02:Ljava/lang/String;

.field public final A03:Ljava/lang/String;

.field public final A04:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/O6;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 55104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/O6;->A04:Ljava/util/List;

    .line 55106
    iput p1, p0, Lcom/facebook/ads/redexgen/X/O6;->A01:I

    .line 55107
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/O6;->A03:Ljava/lang/String;

    .line 55108
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/O6;->A02:Ljava/lang/String;

    .line 55109
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 55110
    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0, p1}, Lcom/facebook/ads/redexgen/X/O6;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 55111
    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/O6;)V
    .locals 0

    .line 55112
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/O6;->A00:Lcom/facebook/ads/redexgen/X/O6;

    .line 55113
    return-void
.end method


# virtual methods
.method public final A01()I
    .locals 1

    .line 55114
    iget v0, p0, Lcom/facebook/ads/redexgen/X/O6;->A01:I

    return v0
.end method

.method public final A02()Lcom/facebook/ads/redexgen/X/O6;
    .locals 1

    .line 55115
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/O6;->A00:Lcom/facebook/ads/redexgen/X/O6;

    return-object v0
.end method

.method public final A03()Ljava/lang/String;
    .locals 1

    .line 55116
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/O6;->A02:Ljava/lang/String;

    return-object v0
.end method

.method public final A04()Ljava/lang/String;
    .locals 1

    .line 55117
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/O6;->A03:Ljava/lang/String;

    return-object v0
.end method

.method public final A05()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/O6;",
            ">;"
        }
    .end annotation

    .line 55118
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/O6;->A04:Ljava/util/List;

    return-object v0
.end method

.method public final A06(Lcom/facebook/ads/redexgen/X/O6;)V
    .locals 1

    .line 55119
    invoke-direct {p1, p0}, Lcom/facebook/ads/redexgen/X/O6;->A00(Lcom/facebook/ads/redexgen/X/O6;)V

    .line 55120
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/O6;->A04:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55121
    return-void
.end method
