.class public abstract Lcom/facebook/ads/redexgen/X/m4;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lcom/google/common/collect/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Aq;
    }
.end annotation


# static fields
.field public static final A00:Lcom/facebook/ads/redexgen/X/m4;

.field public static final A01:Lcom/facebook/ads/redexgen/X/m4;

.field public static final A02:Lcom/facebook/ads/redexgen/X/m4;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 3142
    new-instance v0, Lcom/facebook/ads/redexgen/X/B0;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/B0;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/m4;->A00:Lcom/facebook/ads/redexgen/X/m4;

    .line 3143
    const/4 v1, -0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Aq;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Aq;-><init>(I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/m4;->A02:Lcom/facebook/ads/redexgen/X/m4;

    .line 3144
    const/4 v1, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Aq;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Aq;-><init>(I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/m4;->A01:Lcom/facebook/ads/redexgen/X/m4;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 98064
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/B0;)V
    .locals 0

    .line 98065
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/m4;-><init>()V

    return-void
.end method

.method public static A01()Lcom/facebook/ads/redexgen/X/m4;
    .locals 1

    .line 98066
    sget-object v0, Lcom/facebook/ads/redexgen/X/m4;->A00:Lcom/facebook/ads/redexgen/X/m4;

    return-object v0
.end method

.method public static synthetic A02()Lcom/facebook/ads/redexgen/X/m4;
    .locals 1

    .line 98067
    sget-object v0, Lcom/facebook/ads/redexgen/X/m4;->A02:Lcom/facebook/ads/redexgen/X/m4;

    return-object v0
.end method

.method public static synthetic A03()Lcom/facebook/ads/redexgen/X/m4;
    .locals 1

    .line 98068
    sget-object v0, Lcom/facebook/ads/redexgen/X/m4;->A01:Lcom/facebook/ads/redexgen/X/m4;

    return-object v0
.end method

.method public static synthetic A04()Lcom/facebook/ads/redexgen/X/m4;
    .locals 1

    .line 98069
    sget-object v0, Lcom/facebook/ads/redexgen/X/m4;->A00:Lcom/facebook/ads/redexgen/X/m4;

    return-object v0
.end method


# virtual methods
.method public abstract A05()I
.end method

.method public abstract A06(II)Lcom/facebook/ads/redexgen/X/m4;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "left",
            "right"
        }
    .end annotation
.end method

.method public abstract A07(JJ)Lcom/facebook/ads/redexgen/X/m4;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "left",
            "right"
        }
    .end annotation
.end method

.method public abstract A08(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/facebook/ads/redexgen/X/m4;
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "left",
            "right",
            "comparator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;",
            "Ljava/util/Comparator<",
            "TT;>;)",
            "Lcom/facebook/ads/redexgen/X/m4;"
        }
    .end annotation
.end method

.method public abstract A09(ZZ)Lcom/facebook/ads/redexgen/X/m4;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "left",
            "right"
        }
    .end annotation
.end method

.method public abstract A0A(ZZ)Lcom/facebook/ads/redexgen/X/m4;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "left",
            "right"
        }
    .end annotation
.end method
