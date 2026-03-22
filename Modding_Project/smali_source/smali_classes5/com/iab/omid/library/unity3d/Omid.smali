.class public final Lcom/iab/omid/library/unity3d/Omid;
.super Ljava/lang/Object;


# static fields
.field private static INSTANCE:Lcom/iab/omid/library/unity3d/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/iab/omid/library/unity3d/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/iab/omid/library/unity3d/b;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/iab/omid/library/unity3d/Omid;->INSTANCE:Lcom/iab/omid/library/unity3d/b;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/iab/omid/library/unity3d/Omid;->INSTANCE:Lcom/iab/omid/library/unity3d/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/iab/omid/library/unity3d/b;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/iab/omid/library/unity3d/Omid;->INSTANCE:Lcom/iab/omid/library/unity3d/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/iab/omid/library/unity3d/b;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/iab/omid/library/unity3d/Omid;->INSTANCE:Lcom/iab/omid/library/unity3d/b;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {v0, p0}, Lcom/iab/omid/library/unity3d/b;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
