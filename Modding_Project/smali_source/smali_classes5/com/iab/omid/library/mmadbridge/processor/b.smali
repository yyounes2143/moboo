.class public Lcom/iab/omid/library/mmadbridge/processor/b;
.super Ljava/lang/Object;


# instance fields
.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/mmadbridge/processor/c;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/mmadbridge/processor/d;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/iab/omid/library/mmadbridge/processor/d;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/iab/omid/library/mmadbridge/processor/d;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/iab/omid/library/mmadbridge/processor/b;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/mmadbridge/processor/d;

    .line 10
    .line 11
    new-instance v1, Lcom/iab/omid/library/mmadbridge/processor/c;

    .line 12
    .line 13
    invoke-direct {v1, v0}, Lcom/iab/omid/library/mmadbridge/processor/c;-><init>(Lcom/iab/omid/library/mmadbridge/processor/a;)V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/iab/omid/library/mmadbridge/processor/b;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/mmadbridge/processor/c;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/iab/omid/library/mmadbridge/processor/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/processor/b;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/mmadbridge/processor/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/iab/omid/library/mmadbridge/processor/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/processor/b;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/mmadbridge/processor/c;

    .line 2
    .line 3
    return-object v0
.end method
