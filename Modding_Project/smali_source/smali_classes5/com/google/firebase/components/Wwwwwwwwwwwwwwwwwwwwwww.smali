.class public final synthetic Lcom/google/firebase/components/Wwwwwwwwwwwwwwwwwwwwwww;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/google/firebase/inject/Provider;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/google/firebase/components/OptionalProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/components/OptionalProvider;Lcom/google/firebase/inject/Provider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/firebase/components/Wwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/google/firebase/components/OptionalProvider;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/firebase/components/Wwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/google/firebase/inject/Provider;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/components/Wwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/google/firebase/components/OptionalProvider;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/firebase/components/Wwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/google/firebase/inject/Provider;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/google/firebase/components/ComponentRuntime;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/google/firebase/components/OptionalProvider;Lcom/google/firebase/inject/Provider;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
