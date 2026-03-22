.class public abstract Lcom/iab/omid/library/mmadbridge/adsession/AdSession;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/iab/omid/library/mmadbridge/adsession/AdSessionConfiguration;Lcom/iab/omid/library/mmadbridge/adsession/AdSessionContext;)Lcom/iab/omid/library/mmadbridge/adsession/AdSession;
    .locals 1

    .line 1
    invoke-static {}, Lcom/iab/omid/library/mmadbridge/utils/g;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 2
    .line 3
    .line 4
    const-string v0, "AdSessionConfiguration is null"

    .line 5
    .line 6
    invoke-static {p0, v0}, Lcom/iab/omid/library/mmadbridge/utils/g;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-string v0, "AdSessionContext is null"

    .line 10
    .line 11
    invoke-static {p1, v0}, Lcom/iab/omid/library/mmadbridge/utils/g;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Lcom/iab/omid/library/mmadbridge/adsession/a;

    .line 15
    .line 16
    invoke-direct {v0, p0, p1}, Lcom/iab/omid/library/mmadbridge/adsession/a;-><init>(Lcom/iab/omid/library/mmadbridge/adsession/AdSessionConfiguration;Lcom/iab/omid/library/mmadbridge/adsession/AdSessionContext;)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method


# virtual methods
.method public abstract Wwwwwwwwwwwwwwwwwwwwwwwwwwww()V
.end method

.method public abstract Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/view/View;)V
.end method

.method public abstract Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V
.end method

.method public abstract Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/view/View;)V
.end method

.method public abstract Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V
.end method

.method public abstract Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/view/View;Lcom/iab/omid/library/mmadbridge/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method
