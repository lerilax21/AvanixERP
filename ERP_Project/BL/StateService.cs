using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DL.Model;
using DL.Interfaces;
using BL.Common;

namespace BL
{
    public class StateService
    {
        private static IStateRepository _staterepository;

        public StateService(IStateRepository staterepository)
        {
            if (staterepository != null)
                _staterepository = staterepository;
        }

        public void AddState(tbl_State_Master state)
        {
            state.CreatedDate = DateTime.Now;
            _staterepository.Insert(state);
        }

        public void UpdateState(tbl_State_Master state)
        {
            state.UpdatedDate = DateTime.Now;
            _staterepository.Update(state);
        }

        public IList<tbl_State_Master> GetAllStates()
        {
            return _staterepository.GetAll();
        }

        public tbl_State_Master GetStateByID(int id)
        {
            return _staterepository.GetById(id);
        }

        public void DeleteState(int id)
        {
            _staterepository.Delete(id);
        }

        public void DeleteState(tbl_State_Master state)
        {
            _staterepository.Delete(state);
        }

        public IList<StateComp> GetStateForGrid()
        {
            int i = 0;
            List<StateComp> lstSC = new List<StateComp>();
            IList<tbl_State_Master> lstState = GetAllStates().Where(y=>y.status==(int?)CommonVariable.Status.Active).OrderBy(x => x.cntry_Id).ToList();
            foreach (tbl_State_Master obStateMaster in lstState)
            {
                StateComp obStateComp = new StateComp();

                obStateComp.sNo = ++i;
                obStateComp.stateId = obStateMaster.state_Id;
                obStateComp.stateName = obStateMaster.state_name;
                obStateComp.countryName = obStateMaster.tbl_Country_Master.cntry_name;

                lstSC.Add(obStateComp);
            }
            return lstSC;
        }

        public IList<StateComp> GetStateForGrid(int Id)
        {
            int i = 0;
            List<StateComp> lstSC = new List<StateComp>();
            IList<tbl_State_Master> lstState = GetAllStates().Where(y => y.tbl_Country_Master.cntry_Id == Id && y.status==(int?)CommonVariable.Status.Active).OrderBy(x => x.cntry_Id).ToList();
            foreach (tbl_State_Master obStateMaster in lstState)
            {
                StateComp obStateComp = new StateComp();

                obStateComp.sNo = ++i;
                obStateComp.stateId = obStateMaster.state_Id;
                obStateComp.stateName = obStateMaster.state_name;
                obStateComp.countryName = obStateMaster.tbl_Country_Master.cntry_name;

                lstSC.Add(obStateComp);
            }
            return lstSC;
        }
    }
}
