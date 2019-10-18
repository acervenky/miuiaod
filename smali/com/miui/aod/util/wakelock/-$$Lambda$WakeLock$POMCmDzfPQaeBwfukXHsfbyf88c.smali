.class public final synthetic Lcom/miui/aod/util/wakelock/-$$Lambda$WakeLock$POMCmDzfPQaeBwfukXHsfbyf88c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Ljava/lang/Runnable;

.field private final synthetic f$1:Lcom/miui/aod/util/wakelock/WakeLock;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;Lcom/miui/aod/util/wakelock/WakeLock;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/aod/util/wakelock/-$$Lambda$WakeLock$POMCmDzfPQaeBwfukXHsfbyf88c;->f$0:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/miui/aod/util/wakelock/-$$Lambda$WakeLock$POMCmDzfPQaeBwfukXHsfbyf88c;->f$1:Lcom/miui/aod/util/wakelock/WakeLock;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/aod/util/wakelock/-$$Lambda$WakeLock$POMCmDzfPQaeBwfukXHsfbyf88c;->f$0:Ljava/lang/Runnable;

    iget-object p0, p0, Lcom/miui/aod/util/wakelock/-$$Lambda$WakeLock$POMCmDzfPQaeBwfukXHsfbyf88c;->f$1:Lcom/miui/aod/util/wakelock/WakeLock;

    invoke-static {v0, p0}, Lcom/miui/aod/util/wakelock/WakeLock;->lambda$wrapImpl$2(Ljava/lang/Runnable;Lcom/miui/aod/util/wakelock/WakeLock;)V

    return-void
.end method
