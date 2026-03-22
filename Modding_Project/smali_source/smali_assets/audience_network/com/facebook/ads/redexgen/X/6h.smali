.class public final Lcom/facebook/ads/redexgen/X/6h;
.super Lcom/facebook/ads/redexgen/X/fy;
.source ""


# static fields
.field public static A02:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Q8;

.field public A01:Lcom/facebook/ads/redexgen/X/Q8;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 408
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ZvwGPtqIyq"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "yiAZi4T0ry"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "MW2e2TOPDP9pjEe4rTD"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "HlrRgmhjIEURNOsi3rdB558cP"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "dU7euze3hj2U1ev62XjIRTQ2vrQriAnf"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "8gl08jl5gi3EpiFcU"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "SXjkVQ4wGxN0zpwvt09Xfw5qzXSeRw0d"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Y5nQdyuIxyo1Orqk0oN6DnQ8XCev4LBn"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/6h;->A02:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20045
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/fy;-><init>()V

    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/QO;Landroid/view/View;Lcom/facebook/ads/redexgen/X/Q8;)I
    .locals 3

    .line 20046
    invoke-virtual {p3, p2}, Lcom/facebook/ads/redexgen/X/Q8;->A0F(Landroid/view/View;)I

    move-result v2

    invoke-virtual {p3, p2}, Lcom/facebook/ads/redexgen/X/Q8;->A0D(Landroid/view/View;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v2, v0

    .line 20047
    .local v0, "childCenter":I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/QO;->A1V()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20048
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/Q8;->A0A()I

    move-result v1

    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/Q8;->A0B()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    .line 20049
    .local v1, "containerCenter":I
    .restart local v1    # "containerCenter":I
    :goto_0
    sub-int/2addr v2, v1

    return v2

    .line 20050
    .end local v1    # "containerCenter":I
    :cond_0
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/Q8;->A06()I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    goto :goto_0
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/QO;Lcom/facebook/ads/redexgen/X/Q8;)Landroid/view/View;
    .locals 8

    .line 20051
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/QO;->A0Y()I

    move-result v6

    .line 20052
    .local v0, "childCount":I
    if-nez v6, :cond_0

    .line 20053
    const/4 v0, 0x0

    return-object v0

    .line 20054
    :cond_0
    const/4 v2, 0x0

    .line 20055
    .local v1, "closestChild":Landroid/view/View;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/QO;->A1V()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 20056
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Q8;->A0A()I

    move-result v7

    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Q8;->A0B()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v7, v0

    .line 20057
    .local v2, "center":I
    .restart local v2    # "center":I
    :goto_0
    const v5, 0x7fffffff

    .line 20058
    .local v3, "absClosest":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v6, :cond_4

    .line 20059
    invoke-virtual {p1, v4}, Lcom/facebook/ads/redexgen/X/QO;->A0v(I)Landroid/view/View;

    move-result-object v3

    .line 20060
    .local v5, "child":Landroid/view/View;
    invoke-virtual {p2, v3}, Lcom/facebook/ads/redexgen/X/Q8;->A0F(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p2, v3}, Lcom/facebook/ads/redexgen/X/Q8;->A0D(Landroid/view/View;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    .line 20061
    .local v6, "childCenter":I
    sub-int/2addr v1, v7

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 20062
    .local v7, "absDistance":I
    if-ge v0, v5, :cond_2

    .line 20063
    move v5, v0

    sget-object v2, Lcom/facebook/ads/redexgen/X/6h;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 20064
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/6h;->A02:[Ljava/lang/String;

    const-string v1, "j4bRVUHHACnikA"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    move-object v2, v3

    .line 20065
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childCenter":I
    .end local v7    # "absDistance":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 20066
    .end local v2    # "center":I
    :cond_3
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Q8;->A06()I

    move-result v0

    div-int/lit8 v7, v0, 0x2

    goto :goto_0

    .line 20067
    .end local v4    # "i":I
    :cond_4
    return-object v2
.end method

.method private A02(Lcom/facebook/ads/redexgen/X/QO;Lcom/facebook/ads/redexgen/X/Q8;)Landroid/view/View;
    .locals 6

    .line 20068
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/QO;->A0Y()I

    move-result v4

    .line 20069
    .local v0, "childCount":I
    if-nez v4, :cond_0

    .line 20070
    const/4 v0, 0x0

    return-object v0

    .line 20071
    :cond_0
    const/4 v5, 0x0

    .line 20072
    .local v1, "closestChild":Landroid/view/View;
    const v3, 0x7fffffff

    sget-object v1, Lcom/facebook/ads/redexgen/X/6h;->A02:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x39

    if-eq v1, v0, :cond_3

    .line 20073
    .local v2, "startest":I
    sget-object v2, Lcom/facebook/ads/redexgen/X/6h;->A02:[Ljava/lang/String;

    const-string v1, "DwjJFjjR1ioErHTPj2QZ0AbXqU5bWHnc"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const/4 v0, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v0, v4, :cond_2

    .line 20074
    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/QO;->A0v(I)Landroid/view/View;

    move-result-object v2

    .line 20075
    .local v4, "child":Landroid/view/View;
    invoke-virtual {p2, v2}, Lcom/facebook/ads/redexgen/X/Q8;->A0F(Landroid/view/View;)I

    move-result v1

    .line 20076
    .local v5, "childStart":I
    if-ge v1, v3, :cond_1

    .line 20077
    move v3, v1

    .line 20078
    move-object v5, v2

    .line 20079
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "childStart":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 20080
    .end local v3    # "i":I
    :cond_2
    return-object v5

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A03(Lcom/facebook/ads/redexgen/X/QO;)Lcom/facebook/ads/redexgen/X/Q8;
    .locals 1

    .line 20081
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6h;->A00:Lcom/facebook/ads/redexgen/X/Q8;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6h;->A00:Lcom/facebook/ads/redexgen/X/Q8;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Q8;->A02:Lcom/facebook/ads/redexgen/X/QO;

    if-eq v0, p1, :cond_1

    .line 20082
    :cond_0
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Q8;->A00(Lcom/facebook/ads/redexgen/X/QO;)Lcom/facebook/ads/redexgen/X/gC;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6h;->A00:Lcom/facebook/ads/redexgen/X/Q8;

    .line 20083
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6h;->A00:Lcom/facebook/ads/redexgen/X/Q8;

    return-object v0
.end method

.method private A04(Lcom/facebook/ads/redexgen/X/QO;)Lcom/facebook/ads/redexgen/X/Q8;
    .locals 1

    .line 20084
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6h;->A01:Lcom/facebook/ads/redexgen/X/Q8;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6h;->A01:Lcom/facebook/ads/redexgen/X/Q8;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Q8;->A02:Lcom/facebook/ads/redexgen/X/QO;

    if-eq v0, p1, :cond_1

    .line 20085
    :cond_0
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Q8;->A01(Lcom/facebook/ads/redexgen/X/QO;)Lcom/facebook/ads/redexgen/X/gB;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6h;->A01:Lcom/facebook/ads/redexgen/X/Q8;

    .line 20086
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6h;->A01:Lcom/facebook/ads/redexgen/X/Q8;

    return-object v0
.end method


# virtual methods
.method public final A0C(Lcom/facebook/ads/redexgen/X/QO;II)I
    .locals 7

    .line 20087
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/QO;->A0b()I

    move-result v6

    .line 20088
    .local v0, "itemCount":I
    const/4 v2, -0x1

    if-nez v6, :cond_0

    .line 20089
    return v2

    .line 20090
    :cond_0
    const/4 v1, 0x0

    .line 20091
    .local v2, "mStartMostChildView":Landroid/view/View;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/QO;->A23()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 20092
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/6h;->A04(Lcom/facebook/ads/redexgen/X/QO;)Lcom/facebook/ads/redexgen/X/Q8;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/6h;->A02(Lcom/facebook/ads/redexgen/X/QO;Lcom/facebook/ads/redexgen/X/Q8;)Landroid/view/View;

    move-result-object v1

    .line 20093
    :cond_1
    :goto_0
    if-nez v1, :cond_3

    .line 20094
    return v2

    .line 20095
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/QO;->A22()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20096
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/6h;->A03(Lcom/facebook/ads/redexgen/X/QO;)Lcom/facebook/ads/redexgen/X/Q8;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/6h;->A02(Lcom/facebook/ads/redexgen/X/QO;Lcom/facebook/ads/redexgen/X/Q8;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 20097
    :cond_3
    invoke-virtual {p1, v1}, Lcom/facebook/ads/redexgen/X/QO;->A0r(Landroid/view/View;)I

    move-result v5

    .line 20098
    .local v3, "centerPosition":I
    if-ne v5, v2, :cond_4

    .line 20099
    return v2

    .line 20100
    :cond_4
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/QO;->A22()Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_b

    .line 20101
    if-lez p2, :cond_a

    const/4 v3, 0x1

    .line 20102
    .restart local v1
    :goto_1
    const/4 v1, 0x0

    .line 20103
    .local v6, "reverseLayout":Z
    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/Qa;

    if-eqz v0, :cond_7

    .line 20104
    check-cast p1, Lcom/facebook/ads/redexgen/X/Qa;

    .line 20105
    .local p0, "vectorProvider":Lcom/facebook/ads/redexgen/X/Qa;
    add-int/lit8 v0, v6, -0x1

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/Qa;->A4y(I)Landroid/graphics/PointF;

    move-result-object v2

    .line 20106
    .local p1, "vectorForEnd":Landroid/graphics/PointF;
    if-eqz v2, :cond_7

    .line 20107
    iget v0, v2, Landroid/graphics/PointF;->x:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_5

    iget v0, v2, Landroid/graphics/PointF;->y:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    :cond_5
    const/4 v4, 0x1

    :cond_6
    move v1, v4

    .line 20108
    .end local p0    # "vectorProvider":Lcom/facebook/ads/redexgen/X/Qa;
    .end local p1    # "vectorForEnd":Landroid/graphics/PointF;
    :cond_7
    if-eqz v1, :cond_9

    .line 20109
    if-eqz v3, :cond_8

    add-int/lit8 v5, v5, -0x1

    .line 20110
    :cond_8
    :goto_2
    return v5

    .line 20111
    :cond_9
    if-eqz v3, :cond_8

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 20112
    :cond_a
    const/4 v3, 0x0

    goto :goto_1

    .line 20113
    .end local v1
    :cond_b
    if-lez p3, :cond_c

    const/4 v3, 0x1

    goto :goto_1

    :cond_c
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public final A0D(Lcom/facebook/ads/redexgen/X/QO;)Landroid/view/View;
    .locals 4

    .line 20114
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/QO;->A23()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20115
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/6h;->A04(Lcom/facebook/ads/redexgen/X/QO;)Lcom/facebook/ads/redexgen/X/Q8;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/6h;->A01(Lcom/facebook/ads/redexgen/X/QO;Lcom/facebook/ads/redexgen/X/Q8;)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 20116
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/QO;->A22()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 20117
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/6h;->A03(Lcom/facebook/ads/redexgen/X/QO;)Lcom/facebook/ads/redexgen/X/Q8;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/6h;->A01(Lcom/facebook/ads/redexgen/X/QO;Lcom/facebook/ads/redexgen/X/Q8;)Landroid/view/View;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/6h;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x76

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/6h;->A02:[Ljava/lang/String;

    const-string v1, "ku3zp"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return-object v3

    .line 20118
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public final A0E(Lcom/facebook/ads/redexgen/X/QO;)Lcom/facebook/ads/redexgen/X/gH;
    .locals 2

    .line 20119
    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/Qa;

    if-nez v0, :cond_0

    .line 20120
    const/4 v0, 0x0

    return-object v0

    .line 20121
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fy;->A00:Lcom/facebook/ads/redexgen/X/6g;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6g;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/6i;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/6i;-><init>(Lcom/facebook/ads/redexgen/X/6h;Landroid/content/Context;)V

    return-object v0
.end method

.method public final A0H(Lcom/facebook/ads/redexgen/X/QO;Landroid/view/View;)[I
    .locals 4

    .line 20122
    const/4 v0, 0x2

    new-array v3, v0, [I

    .line 20123
    .local v0, "out":[I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/QO;->A22()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 20124
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/6h;->A03(Lcom/facebook/ads/redexgen/X/QO;)Lcom/facebook/ads/redexgen/X/Q8;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/6h;->A00(Lcom/facebook/ads/redexgen/X/QO;Landroid/view/View;Lcom/facebook/ads/redexgen/X/Q8;)I

    move-result v0

    aput v0, v3, v2

    .line 20125
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/QO;->A23()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 20126
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/6h;->A04(Lcom/facebook/ads/redexgen/X/QO;)Lcom/facebook/ads/redexgen/X/Q8;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/6h;->A00(Lcom/facebook/ads/redexgen/X/QO;Landroid/view/View;Lcom/facebook/ads/redexgen/X/Q8;)I

    move-result v0

    aput v0, v3, v1

    .line 20127
    :goto_1
    return-object v3

    .line 20128
    :cond_0
    aput v2, v3, v1

    goto :goto_1

    .line 20129
    :cond_1
    aput v2, v3, v2

    goto :goto_0
.end method
