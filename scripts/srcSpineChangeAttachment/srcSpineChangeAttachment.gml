/// @function			srcSpineChangeAttachment;
/// @param  {string}	changedSlot				Slot that will change
/// @param  {string}	newAttachment			New attachement to put in the slot
/// @description								Change the attachment for a slot after checking it is different

var changedSlot, newAttachment;

changedSlot = argument[0];
newAttachment = argument[1];

if(skeleton_attachment_get(changedSlot) != newAttachment){
	skeleton_attachment_set(changedSlot, newAttachment);
}