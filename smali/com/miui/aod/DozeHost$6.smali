.class Lcom/miui/aod/DozeHost$6;
.super Ljava/lang/Object;
.source "DozeHost.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/aod/DozeHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/aod/DozeHost;


# direct methods
.method constructor <init>(Lcom/miui/aod/DozeHost;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/DozeHost$6;->this$0:Lcom/miui/aod/DozeHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/DozeHost$6;->this$0:Lcom/miui/aod/DozeHost;

    invoke-virtual {p0}, Lcom/miui/aod/DozeHost;->removeAODView()V

    return-void
.end method
