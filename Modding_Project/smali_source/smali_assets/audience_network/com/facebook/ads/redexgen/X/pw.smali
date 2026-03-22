.class public final Lcom/facebook/ads/redexgen/X/pw;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/pu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Ljava/lang/Object;",
        "StateType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/pu;

.field public A01:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/py<",
            "TModelType;TStateType;>;>;"
        }
    .end annotation
.end field

.field public A02:Z

.field public final A03:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TModelType;"
        }
    .end annotation
.end field

.field public final A04:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TStateType;"
        }
    .end annotation
.end field

.field public final A05:Ljava/lang/String;

.field public final A06:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModelType;TStateType;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 103259
    .local p0, "this":Lcom/facebook/ads/redexgen/X/pw;, "Lcom/instagram/common/viewpoint/core/ViewpointData$Builder<TModelType;TStateType;>;"
    .local p1, "model":Ljava/lang/Object;, "TModelType;"
    .local p2, "state":Ljava/lang/Object;, "TStateType;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103260
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/pw;->A01:Ljava/util/List;

    .line 103261
    sget-object v0, Lcom/facebook/ads/redexgen/X/pu;->A0B:Lcom/facebook/ads/redexgen/X/pu;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/pw;->A00:Lcom/facebook/ads/redexgen/X/pu;

    .line 103262
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/pw;->A02:Z

    .line 103263
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/pw;->A03:Ljava/lang/Object;

    .line 103264
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/pw;->A04:Ljava/lang/Object;

    .line 103265
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/pw;->A06:Ljava/lang/String;

    .line 103266
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/pw;->A05:Ljava/lang/String;

    .line 103267
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/pw;)Lcom/facebook/ads/redexgen/X/pu;
    .locals 0

    .line 103268
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/pw;->A00:Lcom/facebook/ads/redexgen/X/pu;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/pw;)Ljava/lang/Object;
    .locals 0

    .line 103269
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/pw;->A03:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/pw;)Ljava/lang/Object;
    .locals 0

    .line 103270
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/pw;->A04:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/pw;)Ljava/lang/String;
    .locals 0

    .line 103271
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/pw;->A06:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/pw;)Ljava/util/List;
    .locals 0

    .line 103272
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/pw;->A01:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/pw;)Z
    .locals 0

    .line 103273
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/pw;->A02:Z

    return p0
.end method


# virtual methods
.method public final A06(Lcom/facebook/ads/redexgen/X/py;)Lcom/facebook/ads/redexgen/X/pw;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/py<",
            "TModelType;TStateType;>;)",
            "Lcom/facebook/ads/redexgen/X/pw<",
            "TModelType;TStateType;>;"
        }
    .end annotation

    .line 103274
    .local p0, "this":Lcom/facebook/ads/redexgen/X/pw;, "Lcom/instagram/common/viewpoint/core/ViewpointData$Builder<TModelType;TStateType;>;"
    .local p1, "viewpointAction":Lcom/facebook/ads/redexgen/X/py;, "Lcom/instagram/common/viewpoint/core/ViewpointAction<TModelType;TStateType;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pw;->A01:Ljava/util/List;

    if-nez v0, :cond_0

    .line 103275
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/pw;->A01:Ljava/util/List;

    .line 103276
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pw;->A01:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103277
    return-object p0
.end method

.method public final A07()Lcom/facebook/ads/redexgen/X/pu;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/ads/redexgen/X/pu<",
            "TModelType;TStateType;>;"
        }
    .end annotation

    .line 103278
    .local p0, "this":Lcom/facebook/ads/redexgen/X/pw;, "Lcom/instagram/common/viewpoint/core/ViewpointData$Builder<TModelType;TStateType;>;"
    new-instance v0, Lcom/facebook/ads/redexgen/X/pu;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/pu;-><init>(Lcom/facebook/ads/redexgen/X/pw;)V

    return-object v0
.end method
