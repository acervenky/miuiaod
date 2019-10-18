.class Lcom/miui/aod/settings/AODFragment$1;
.super Ljava/lang/Object;
.source "AODFragment.java"

# interfaces
.implements Lmiui/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/aod/settings/AODFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/aod/settings/AODFragment;


# direct methods
.method constructor <init>(Lcom/miui/aod/settings/AODFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/settings/AODFragment$1;->this$0:Lcom/miui/aod/settings/AODFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Lmiui/widget/TimePicker;II)V
    .locals 3

    iget-object p1, p0, Lcom/miui/aod/settings/AODFragment$1;->this$0:Lcom/miui/aod/settings/AODFragment;

    invoke-static {p1}, Lcom/miui/aod/settings/AODFragment;->access$000(Lcom/miui/aod/settings/AODFragment;)Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/aod/settings/AODFragment$1;->this$0:Lcom/miui/aod/settings/AODFragment;

    mul-int/lit8 p2, p2, 0x3c

    add-int/2addr p2, p3

    invoke-static {p1, p2}, Lcom/miui/aod/settings/AODFragment;->access$102(Lcom/miui/aod/settings/AODFragment;I)I

    iget-object p1, p0, Lcom/miui/aod/settings/AODFragment$1;->this$0:Lcom/miui/aod/settings/AODFragment;

    invoke-static {p1}, Lcom/miui/aod/settings/AODFragment;->access$200(Lcom/miui/aod/settings/AODFragment;)Lmiui/preference/ValuePreference;

    move-result-object p1

    const-string p2, "%02d:%02d"

    new-array p3, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/miui/aod/settings/AODFragment$1;->this$0:Lcom/miui/aod/settings/AODFragment;

    invoke-static {v2}, Lcom/miui/aod/settings/AODFragment;->access$100(Lcom/miui/aod/settings/AODFragment;)I

    move-result v2

    div-int/lit8 v2, v2, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p3, v1

    iget-object v1, p0, Lcom/miui/aod/settings/AODFragment$1;->this$0:Lcom/miui/aod/settings/AODFragment;

    invoke-static {v1}, Lcom/miui/aod/settings/AODFragment;->access$100(Lcom/miui/aod/settings/AODFragment;)I

    move-result v1

    rem-int/lit8 v1, v1, 0x3c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p3, v0

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/aod/settings/AODFragment$1;->this$0:Lcom/miui/aod/settings/AODFragment;

    invoke-static {p1}, Lcom/miui/aod/settings/AODFragment;->access$300(Lcom/miui/aod/settings/AODFragment;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "aod_start"

    iget-object p0, p0, Lcom/miui/aod/settings/AODFragment$1;->this$0:Lcom/miui/aod/settings/AODFragment;

    invoke-static {p0}, Lcom/miui/aod/settings/AODFragment;->access$100(Lcom/miui/aod/settings/AODFragment;)I

    move-result p0

    invoke-static {p1, p2, p0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/aod/settings/AODFragment$1;->this$0:Lcom/miui/aod/settings/AODFragment;

    mul-int/lit8 p2, p2, 0x3c

    add-int/2addr p2, p3

    invoke-static {p1, p2}, Lcom/miui/aod/settings/AODFragment;->access$402(Lcom/miui/aod/settings/AODFragment;I)I

    iget-object p1, p0, Lcom/miui/aod/settings/AODFragment$1;->this$0:Lcom/miui/aod/settings/AODFragment;

    invoke-static {p1}, Lcom/miui/aod/settings/AODFragment;->access$500(Lcom/miui/aod/settings/AODFragment;)Lmiui/preference/ValuePreference;

    move-result-object p1

    const-string p2, "%02d:%02d"

    new-array p3, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/miui/aod/settings/AODFragment$1;->this$0:Lcom/miui/aod/settings/AODFragment;

    invoke-static {v2}, Lcom/miui/aod/settings/AODFragment;->access$400(Lcom/miui/aod/settings/AODFragment;)I

    move-result v2

    div-int/lit8 v2, v2, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p3, v1

    iget-object v1, p0, Lcom/miui/aod/settings/AODFragment$1;->this$0:Lcom/miui/aod/settings/AODFragment;

    invoke-static {v1}, Lcom/miui/aod/settings/AODFragment;->access$400(Lcom/miui/aod/settings/AODFragment;)I

    move-result v1

    rem-int/lit8 v1, v1, 0x3c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p3, v0

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/aod/settings/AODFragment$1;->this$0:Lcom/miui/aod/settings/AODFragment;

    invoke-static {p1}, Lcom/miui/aod/settings/AODFragment;->access$300(Lcom/miui/aod/settings/AODFragment;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "aod_end"

    iget-object p0, p0, Lcom/miui/aod/settings/AODFragment$1;->this$0:Lcom/miui/aod/settings/AODFragment;

    invoke-static {p0}, Lcom/miui/aod/settings/AODFragment;->access$400(Lcom/miui/aod/settings/AODFragment;)I

    move-result p0

    invoke-static {p1, p2, p0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    return-void
.end method
