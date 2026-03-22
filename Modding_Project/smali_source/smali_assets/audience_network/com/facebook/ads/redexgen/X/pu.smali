.class public final Lcom/facebook/ads/redexgen/X/pu;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/pv;,
        Lcom/facebook/ads/redexgen/X/pw;
    }
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


# static fields
.field public static A0A:[B

.field public static final A0B:Lcom/facebook/ads/redexgen/X/pu;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/pv;

.field public A01:Lcom/facebook/ads/redexgen/X/pl;

.field public A02:Ljava/lang/String;

.field public A03:Z

.field public final A04:Z

.field public final A05:Lcom/facebook/ads/redexgen/X/pu;

.field public final A06:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TModelType;"
        }
    .end annotation
.end field

.field public final A07:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TStateType;"
        }
    .end annotation
.end field

.field public final A08:Ljava/lang/String;

.field public final A09:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/py<",
            "TModelType;TStateType;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 3436
    invoke-static {}, Lcom/facebook/ads/redexgen/X/pu;->A02()V

    new-instance v3, Lcom/facebook/ads/redexgen/X/pu;

    .line 3437
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    sget-object v9, Lcom/facebook/ads/redexgen/X/pu;->A0B:Lcom/facebook/ads/redexgen/X/pu;

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v2, 0x30

    const/4 v1, 0x5

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/pu;->A01(III)Ljava/lang/String;

    move-result-object v6

    const/16 v2, 0x30

    const/4 v1, 0x5

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/pu;->A01(III)Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v3 .. v10}, Lcom/facebook/ads/redexgen/X/pu;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/facebook/ads/redexgen/X/pu;Z)V

    sput-object v3, Lcom/facebook/ads/redexgen/X/pu;->A0B:Lcom/facebook/ads/redexgen/X/pu;

    .line 3438
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/pw;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/pw<",
            "TModelType;TStateType;>;)V"
        }
    .end annotation

    .line 103221
    .local p0, "this":Lcom/facebook/ads/redexgen/X/pu;, "Lcom/instagram/common/viewpoint/core/ViewpointData<TModelType;TStateType;>;"
    .local p1, "builder":Lcom/facebook/ads/redexgen/X/pw;, "Lcom/instagram/common/viewpoint/core/ViewpointData$Builder<TModelType;TStateType;>;"
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/pw;->A01(Lcom/facebook/ads/redexgen/X/pw;)Ljava/lang/Object;

    move-result-object v1

    .line 103222
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/pw;->A02(Lcom/facebook/ads/redexgen/X/pw;)Ljava/lang/Object;

    move-result-object v2

    .line 103223
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/pw;->A03(Lcom/facebook/ads/redexgen/X/pw;)Ljava/lang/String;

    move-result-object v3

    .line 103224
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/pw;->A03(Lcom/facebook/ads/redexgen/X/pw;)Ljava/lang/String;

    move-result-object v4

    .line 103225
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/pw;->A04(Lcom/facebook/ads/redexgen/X/pw;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 103226
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    .line 103227
    :goto_0
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/pw;->A00(Lcom/facebook/ads/redexgen/X/pw;)Lcom/facebook/ads/redexgen/X/pu;

    move-result-object v6

    .line 103228
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/pw;->A05(Lcom/facebook/ads/redexgen/X/pw;)Z

    move-result v7

    .line 103229
    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/facebook/ads/redexgen/X/pu;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/facebook/ads/redexgen/X/pu;Z)V

    .line 103230
    return-void

    .line 103231
    :cond_0
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/pw;->A04(Lcom/facebook/ads/redexgen/X/pw;)Ljava/util/List;

    move-result-object v5

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/facebook/ads/redexgen/X/pu;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModelType;TStateType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/py<",
            "TModelType;TStateType;>;>;",
            "Lcom/facebook/ads/redexgen/X/pu;",
            "Z)V"
        }
    .end annotation

    .line 103232
    .local v2, "this":Lcom/facebook/ads/redexgen/X/pu;, "Lcom/instagram/common/viewpoint/core/ViewpointData<TModelType;TStateType;>;"
    .local p0, "model":Ljava/lang/Object;, "TModelType;"
    .local p1, "state":Ljava/lang/Object;, "TStateType;"
    .local p4, "viewpointActions":Ljava/util/List;, "Ljava/util/List<Lcom/instagram/common/viewpoint/core/ViewpointAction<TModelType;TStateType;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103233
    sget-object v0, Lcom/facebook/ads/redexgen/X/pv;->A02:Lcom/facebook/ads/redexgen/X/pv;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/pu;->A00:Lcom/facebook/ads/redexgen/X/pv;

    .line 103234
    instance-of v0, p1, Landroid/view/View;

    if-nez v0, :cond_0

    .line 103235
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/pu;->A06:Ljava/lang/Object;

    .line 103236
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/pu;->A07:Ljava/lang/Object;

    .line 103237
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/pu;->A08:Ljava/lang/String;

    .line 103238
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/pu;->A02:Ljava/lang/String;

    .line 103239
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/pu;->A05:Lcom/facebook/ads/redexgen/X/pu;

    .line 103240
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/pu;->A03:Z

    .line 103241
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/pu;->A09:Ljava/util/List;

    .line 103242
    iput-boolean p7, p0, Lcom/facebook/ads/redexgen/X/pu;->A04:Z

    .line 103243
    return-void

    .line 103244
    :cond_0
    const/4 v2, 0x0

    const/16 v1, 0x30

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/pu;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static A00(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/pw;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ModelType:",
            "Ljava/lang/Object;",
            "StateType:",
            "Ljava/lang/Object;",
            ">(TModelType;TStateType;",
            "Ljava/lang/String;",
            ")",
            "Lcom/facebook/ads/redexgen/X/pw<",
            "TModelType;TStateType;>;"
        }
    .end annotation

    .line 103245
    .local p0, "model":Ljava/lang/Object;, "TModelType;"
    .local p1, "state":Ljava/lang/Object;, "TStateType;"
    new-instance v0, Lcom/facebook/ads/redexgen/X/pw;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/ads/redexgen/X/pw;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/pu;->A0A:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x1a

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x35

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/pu;->A0A:[B

    return-void

    :array_0
    .array-data 1
        0x4et
        0x71t
        0x7dt
        0x6ft
        0x68t
        0x77t
        0x71t
        0x76t
        0x6ct
        0x5ct
        0x79t
        0x6ct
        0x79t
        0x38t
        0x6bt
        0x70t
        0x77t
        0x6dt
        0x74t
        0x7ct
        0x38t
        0x76t
        0x77t
        0x6ct
        0x38t
        0x7bt
        0x77t
        0x76t
        0x6ct
        0x79t
        0x71t
        0x76t
        0x38t
        0x79t
        0x38t
        0x6et
        0x71t
        0x7dt
        0x6ft
        0x38t
        0x79t
        0x6bt
        0x38t
        0x75t
        0x77t
        0x7ct
        0x7dt
        0x74t
        0x53t
        0x5bt
        0x46t
        0x42t
        0x4ft
    .end array-data
.end method


# virtual methods
.method public final A03(Lcom/facebook/ads/redexgen/X/pk;)V
    .locals 2

    .line 103246
    .local p2, "this":Lcom/facebook/ads/redexgen/X/pu;, "Lcom/instagram/common/viewpoint/core/ViewpointData<TModelType;TStateType;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pu;->A09:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/py;

    .line 103247
    .local v1, "viewpointAction":Lcom/facebook/ads/redexgen/X/py;, "Lcom/instagram/common/viewpoint/core/ViewpointAction<TModelType;TStateType;>;"
    .local p0, "logId":I
    invoke-interface {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/py;->A6J(Lcom/facebook/ads/redexgen/X/pu;Lcom/facebook/ads/redexgen/X/pk;)V

    .line 103248
    .end local v1    # "viewpointAction":Lcom/facebook/ads/redexgen/X/py;, "Lcom/instagram/common/viewpoint/core/ViewpointAction<TModelType;TStateType;>;"
    .end local p0    # "logId":I
    goto :goto_0

    .line 103249
    :cond_0
    invoke-interface {p1, p0}, Lcom/facebook/ads/redexgen/X/pk;->A9M(Lcom/facebook/ads/redexgen/X/pu;)Lcom/facebook/ads/redexgen/X/pl;

    move-result-object v1

    .line 103250
    .local v0, "viewState":Lcom/facebook/ads/redexgen/X/pl;
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/pu;->A01:Lcom/facebook/ads/redexgen/X/pl;

    .line 103251
    sget-object v0, Lcom/facebook/ads/redexgen/X/pl;->A02:Lcom/facebook/ads/redexgen/X/pl;

    if-ne v1, v0, :cond_1

    .line 103252
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/pu;->A03:Z

    .line 103253
    :cond_1
    return-void
.end method

.method public final A04()Z
    .locals 1

    .line 103254
    .local p0, "this":Lcom/facebook/ads/redexgen/X/pu;, "Lcom/instagram/common/viewpoint/core/ViewpointData<TModelType;TStateType;>;"
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/pu;->A03:Z

    return v0
.end method
